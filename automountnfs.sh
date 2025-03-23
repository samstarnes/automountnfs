#!/bin/bash

# Setup logging
LOGFILE="/var/log/mount_monitor.log"
exec > >(tee -a "${LOGFILE}")
exec 2> >(tee -a "${LOGFILE}" >&2)

CONFIG="/etc/mounts.conf"
FSTAB="/etc/fstab"
FIRST_RUN_FLAG="/var/run/mount_monitor_first_run_done"

# Load config
if [[ ! -f "$CONFIG" ]]; then
    echo "❌ Config file $CONFIG not found. Exiting."
    exit 1
fi

# Parse NTFY and interval settings
NTFY=$(grep "^NTFY=" "$CONFIG" | cut -d'=' -f2)
NTFYPORT=$(grep "^NTFYPORT=" "$CONFIG" | cut -d'=' -f2)
CHECK_INTERVAL=$(grep "^CHECK_INTERVAL=" "$CONFIG" | cut -d'=' -f2)
if [[ -z "$CHECK_INTERVAL" || ! "$CHECK_INTERVAL" =~ ^[0-9]+$ ]]; then
    echo "⚠️ CHECK_INTERVAL invalid or missing, defaulting to 10"
    CHECK_INTERVAL=10
fi

# Function to send ntfy notification
notify() {
    local message="$1"
    curl -d "MountMonitor: $message" "$NTFY:$NTFYPORT/automount_nfs" 2>/dev/null
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
            sudo docker restart "$service" >/dev/null 2>&1
            echo "🔄 Restarted Docker service: $service"
            affected_services+="$service, "
        done
        notify "Restarted services for $mountpoint: $affected_services"
    fi
}

# Function to escape special characters for sed
escape_sed() {
    echo "$1" | sed 's/[\/|&]/\\&/g'
}

# One-time fstab sync (only on first run)
if [[ ! -f "$FIRST_RUN_FLAG" ]]; then
    echo "🔧 Syncing $FSTAB with $CONFIG (first run)..."
    active_mounts=$(grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | cut -d'|' -f1)
    grep "^/" "$FSTAB" | while read -r line; do
        mountpoint=$(echo "$line" | awk '{print $2}')
        if [[ -n "$mountpoint" ]] && ! echo "$active_mounts" | grep -q "^$mountpoint$"; then
            sudo sed -i "\|$mountpoint|d" "$FSTAB"
            echo "🗑️ Removed $mountpoint from $FSTAB (commented out in $CONFIG)"
        fi
    done

    grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | while IFS='|' read -r mountpoint source type options services; do
        if [[ -z "$mountpoint" || "$mountpoint" == "#"* ]]; then continue; fi
        if ! grep -q "$mountpoint" "$FSTAB"; then
            echo "$source $mountpoint $type $options 0 0" | sudo tee -a "$FSTAB"
            echo "➕ Added $mountpoint to $FSTAB"
        else
            current_line=$(grep "$mountpoint" "$FSTAB")
            new_line="$source $mountpoint $type $options 0 0"
            if [[ "$current_line" != "$new_line" ]]; then
                escaped_current=$(escape_sed "$current_line")
                escaped_new=$(escape_sed "$new_line")
                sudo sed -i "s|$escaped_current|$escaped_new|" "$FSTAB"
                echo "🔄 Updated $mountpointplaats in $FSTAB"
            fi
        fi
        sudo mkdir -p "$mountpoint"
    done

    # Initial mount
    echo "⭕ Mounting all drives from $FSTAB..."
    sudo mount -a 2>/dev/null || echo "⚠️ Some mounts may have failed (nofail allows this)"

    # Mark first run complete
    sudo touch "$FIRST_RUN_FLAG"
fi

# Track mount status
declare -A mount_status
grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | while IFS='|' read -r mountpoint source type options services; do
    if [[ -n "$mountpoint" && "$mountpoint" != "#"* ]]; then
        mount_status["$mountpoint"]=$(mountpoint -q "$mountpoint" && echo 1 || echo 0)
    fi
done

echo "🚀 Starting mount monitor..."
while true; do
    grep -v "^#" "$CONFIG" | grep -v "^NTFY" | grep -v "^CHECK_INTERVAL" | while IFS='|' read -r mountpoint source type options services; do
        if [[ -z "$mountpoint" || "$mountpoint" == "#"* ]]; then continue; fi
        if mountpoint -q "$mountpoint"; then
            if [[ "${mount_status[$mountpoint]}" -eq 0 ]]; then
                echo "✅ $mountpoint ($source) is back online"
                notify "$mountpoint ($source) remounted successfully"
                restart_services "$services" "$mountpoint"
                mount_status["$mountpoint"]=1
            fi
        else
            if [[ "${mount_status[$mountpoint]}" -eq 1 ]]; then
                echo "❌ $mountpoint ($source) is offline"
                notify "$mountpoint ($source) lost connection"
                mount_status["$mountpoint"]=0
            fi
            sudo mount "$mountpoint" 2>/dev/null || true
        fi
    done
    sleep "$CHECK_INTERVAL" || { echo "❌ Sleep failed, exiting"; exit 1; }
done
