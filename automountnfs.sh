#!/bin/bash

# Setup logging
LOGFILE="/var/log/mount_monitor.log"
exec > >(tee -a "${LOGFILE}")
exec 2> >(tee -a "${LOGFILE}" >&2)

CONFIG="/etc/mounts.conf"
FSTAB="/etc/fstab"

# Load config
if [[ ! -f "$CONFIG" ]]; then
    echo "❌ Config file $CONFIG not found. Exiting."
    exit 1
fi

# Parse NTFY and interval settings
NTFY=$(grep "^NTFY=" "$CONFIG" | cut -d'=' -f2)
NTFYPORT=$(grep "^NTFYPORT=" "$CONFIG" | cut -d'=' -f2)
CHECK_INTERVAL=$(grep "^CHECK_INTERVAL=" "$CONFIG" | cut -d'=' -f2)

# Function to send ntfy notification
notify() {
    local message="$1"
    curl -d "MountMonitor: $message" "$NTFY:$NTFYPORT/automount_nfs"
    echo "📢 Notified: $message"
}

# Function to restart Docker services
restart_services() {
    local services="$1"
    local mountpoint="$2"
    if [[ -n "$services" ]]; then
        echo "🔄 Restarting services for $mountpoint: $services"
        affected_services=""
        for service in $services; do
            sudo docker restart "$service"
            echo "🔄 Restarted Docker service: $service"
            affected_services+="$service, "
        done
        notify "Restarted services for $mountpoint: $affected_services"
    fi
}

# Update fstab, adding nofail as a fallback if not specified
echo "🔧 Checking/Updating $FSTAB..."
grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | while IFS='|' read -r mountpoint source type options services; do
    if [[ -z "$mountpoint" || "$mountpoint" == "#"* ]]; then continue; fi
    # Add nofail if not present (fallback for safety)
    if ! echo "$options" | grep -q "nofail"; then
        options="$options,nofail"
        echo "⚠️ Added nofail to $mountpoint options as a fallback"
    fi
    if ! grep -q "$mountpoint" "$FSTAB"; then
        echo "$source $mountpoint $type $options 0 0" | sudo tee -a "$FSTAB"
        echo "➕ Added $mountpoint to $FSTAB"
    else
        # Update existing entry if options differ
        current_line=$(grep "$mountpoint" "$FSTAB")
        new_line="$source $mountpoint $type $options 0 0"
        if [[ "$current_line" != "$new_line" ]]; then
            sudo sed -i "s|$current_line|$new_line|" "$FSTAB"
            echo "🔄 Updated $mountpoint in $FSTAB"
        fi
    fi
    # Ensure mountpoint directory exists
    sudo mkdir -p "$mountpoint"
done

# Mount all drives (post-boot catch-up for unavailable drives)
echo "⭕ Mounting all drives from $FSTAB..."
sudo mount -a 2>/dev/null || echo "⚠️ Some mounts may have failed (nofail allows this)"

# Track mount status (0 = down, 1 = up)
declare -A mount_status
grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | while IFS='|' read -r mountpoint source type options services; do
    if [[ -n "$mountpoint" && "$mountpoint" != "#"* ]]; then
        mount_status["$mountpoint"]=1  # Assume initially up
    fi
done

# Main monitoring loop
echo "🚀 Starting mount monitor..."
while true; do
    grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | while IFS='|' read -r mountpoint source type options services; do
        if [[ -z "$mountpoint" || "$mountpoint" == "#"* ]]; then continue; fi
        if mountpoint -q "$mountpoint"; then
            # Mount is up
            if [[ "${mount_status[$mountpoint]}" -eq 0 ]]; then
                echo "✅ $mountpoint ($source) is back online"
                notify "$mountpoint ($source) remounted successfully"
                restart_services "$services" "$mountpoint"
                mount_status["$mountpoint"]=1
            fi
        else
            # Mount is down
            if [[ "${mount_status[$mountpoint]}" -eq 1 ]]; then
                echo "❌ $mountpoint ($source) is offline"
                notify "$mountpoint ($source) lost connection"
                mount_status["$mountpoint"]=0
            fi
            # Attempt remount
            sudo mount "$mountpoint" 2>/dev/null || echo "⚠️  Failed to remount $mountpoint (may be unavailable)"
        fi
    done
    sleep "$CHECK_INTERVAL"
done
