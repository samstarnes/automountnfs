# AutoMountNFS
Monitor Mounts, Restart Docker Services, and Notify via ntfy

# Usage
- /etc/mounts.conf

`sudo bash automountnfs.sh`

## Systemd
- /etc/systemd/system/automountfs.service  
`sudo systemctl daemon-reload` # (after adding the .service file)  
`sudo systemctl enable automountfs.service`  
`sudo systemctl start automountnfs.service`


## /var/log/mount_monitor.log Summary
<details>
  <summary>Example:</summary>

```
🔧 Syncing /etc/fstab with /etc/mounts.conf (first run)...
//10.0.0.5/C /mnt/C cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/C to /etc/fstab
//10.0.0.5/E /mnt/E cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/E to /etc/fstab
//10.0.0.5/F /mnt/Yellow cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/Yellow to /etc/fstab
//10.0.0.5/I /mnt/Purple cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/Purple to /etc/fstab
//10.0.0.5/J /mnt/Se7en cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/Se7en to /etc/fstab
//10.0.0.5/O /mnt/Jellyfin cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/Jellyfin to /etc/fstab
//10.0.0.5/R /mnt/Zero cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/Zero to /etc/fstab
//10.0.0.5/T /mnt/10tb2 cifs username=username,password=password,nobrl,iocharset=utf8,vers=2.0,uid=1000,rw,noperm,nofail 0 0
➕ Added /mnt/10tb2 to /etc/fstab
/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2 /mnt/Ronin ext4 defaults 0 0
➕ Added /mnt/Ronin to /etc/fstab
/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a /mnt/Kingston ext4 defaults 0 0
➕ Added /mnt/Kingston to /etc/fstab
/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510 /mnt/10tb1 ext4 defaults 0 0
➕ Added /mnt/10tb1 to /etc/fstab
⭕ Mounting all drives from /etc/fstab...
🚀 Starting mount monitor...
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"H0kuOTOIps8d","time":1742703472,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"SmT5LeoD7hnQ","time":1742703472,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"yqKpThiIfjym","time":1742703472,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"o60akbQAA6Xe","time":1742703472,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"vfIucfRu5pgD","time":1742704154,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"Uwigha5ClwCM","time":1742704154,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"Qv6ew45arRoM","time":1742704210,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"4bm80a4gx8Mf","time":1742704210,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"5xX9of4cNlTi","time":1742704210,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"fMWTDscK246V","time":1742704210,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"fEx3Sa9PgXkn","time":1742704472,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"Fc9gCIb5A0Zx","time":1742704473,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"WGCNzT0d6sTv","time":1742704473,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"sNYbCAjxK7Im","time":1742704515,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"JbuFGzxaFNBw","time":1742704515,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"sM9YX24XUbBn","time":1742704606,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"brl1niCOlasE","time":1742704616,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"rGlVtoCy1pNh","time":1742704617,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"VyRMLgmdOjzt","time":1742704617,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"ZSuPXJoFEXAn","time":1742704617,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"i4CEiYWwlfGn","time":1742705329,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"PTSuMLHTh2ZT","time":1742705329,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"23I0J7e4O3Bq","time":1742705373,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"5DU3mB4XY4q1","time":1742705373,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"tSuZr567967b","time":1742705373,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"uaV6vx3eqrT4","time":1742705373,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"OueBqd8yiyLB","time":1742705738,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"jBlxUFoouHQU","time":1742705739,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"L6Xf4wXGqXKt","time":1742705739,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"zsfBXyigr8gY","time":1742705788,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"LzgW2jR3f79x","time":1742705788,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"djSmmaBqShui","time":1742705891,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"cCODaYmRg8XK","time":1742705901,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"fVLIAzBJaP38","time":1742705901,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"oSuN2mfbrq6o","time":1742705901,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"rHzzApqZPFhL","time":1742705901,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"qBFYgzuitmM9","time":1742706543,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"NnFvPityXNVv","time":1742706543,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"0nSFxTPkjvUX","time":1742706605,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"R0i4Xk8t9PUg","time":1742706605,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"cNPQ5uDCDFy6","time":1742706605,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"FZ2yODNQuQmx","time":1742706605,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"zJrwSkHNwTGw","time":1742706943,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"P3dpOQbk7ImS","time":1742706943,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"H7jflM4zaR7Z","time":1742706943,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"V1F3UZMzOF0X","time":1742706983,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"WnrdcpAisMBM","time":1742706983,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"QfctWkzySu3V","time":1742707065,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"2cVCH3MTBXKn","time":1742707075,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"12xM6CyvrpTN","time":1742707075,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"S1kDPsOeqKQo","time":1742707075,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"mSbgmy5jgXq5","time":1742707075,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"lChegVIDXRsd","time":1742707594,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"r6L8MFi7dBbU","time":1742707595,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"QgtOP6joXlmT","time":1742707660,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"077hHeu4nSYF","time":1742707660,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"SrRUKIxUVLjd","time":1742707660,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"Z7iyGqNoc3EN","time":1742707660,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"oeM3cSYJovp0","time":1742708022,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"7YqdvMhDFEWj","time":1742708022,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"5LbL6gIaAbKR","time":1742708022,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"M0BK3TfLoICm","time":1742708074,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"pqH00d2QgejI","time":1742708074,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"sSurshwh2BvC","time":1742708161,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"Ik1UTNAwvUaj","time":1742708171,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"Bbly5ZtAV5Dc","time":1742708171,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"YnJD8tGZL3mJ","time":1742708171,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"WIoqBxzuA1v0","time":1742708171,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"9EcsQP1dDjvO","time":1742708605,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"FkGdU8kqBKcW","time":1742708605,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"2iITYIE638PV","time":1742708657,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"3ZWaej1EnptM","time":1742708657,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"kUAXyMP0h4lr","time":1742708657,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"FUHr5RRHXeSC","time":1742708657,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"w0oDQznASfKM","time":1742708999,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"U8uj8oQDu6o7","time":1742708999,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"GlFRDg2JjKPZ","time":1742708999,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"UuL03CT9ejhW","time":1742709041,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"6FPnwUITftQG","time":1742709041,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"nUAXZEfKOGgu","time":1742709132,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"5ns8iKNOqptV","time":1742709142,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"LfGLNLPi9LeP","time":1742709142,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"HmtZw3ArxfuM","time":1742709142,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"J8cdpf7LYDkB","time":1742709142,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"f88fzdVXbLzd","time":1742709642,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"tDg7v3ukJE8w","time":1742709642,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"ehWHiSpbL5xn","time":1742709707,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"8rMBzV7cidOC","time":1742709707,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"b85DDtiByPi6","time":1742709707,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"hSBY69qgNOQ9","time":1742709707,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"xVvQ77QL4GEZ","time":1742710096,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"Hbxlpzyraye3","time":1742710096,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"jkYMlehnM7J0","time":1742710096,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"uG4rlbfWvLcP","time":1742710152,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"1Kslxc7n8DUv","time":1742710152,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"NdBfop6tj985","time":1742710218,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"JM5KWGxkAtvT","time":1742710310,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"Tyg0q8Fuk2Jt","time":1742710310,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"1RQkt99i462C","time":1742710312,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"FYIddckGIlSP","time":1742710312,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"UqevXMVfgk1G","time":1742710334,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"dzDLpCshKqpd","time":1742710425,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"mPGpBzKHxiN5","time":1742710425,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"5gjhA5VExyVl","time":1742710431,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"qF23JdbFsfUT","time":1742710431,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"SyAoNThqm1u7","time":1742710446,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"SjQ5OUxCTy4y","time":1742710537,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"gxEdOdXMmutP","time":1742710537,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"A3pYfpTO9IL7","time":1742710540,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"txILaM3oG18d","time":1742710540,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"Nz18QG69N7HY","time":1742710545,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"xROfDCHzPQEE","time":1742710636,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"3cWG4J63W7Pa","time":1742710636,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"eLjGM3t0FnIy","time":1742710640,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"sGVyRwgpwIov","time":1742710640,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"dF2KrXoJTGWl","time":1742710667,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"edLw8Cx0Wgmv","time":1742710677,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"0LkoxhnSqJia","time":1742710677,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"0QyfLeJ8kElz","time":1742710677,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"JGJ4WpqWuIqY","time":1742710677,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"rINrzDgQDoto","time":1742710894,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"vQ3OQ8b1wCj6","time":1742710894,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"JdMjaOP6RMeE","time":1742710908,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"HPlVVbPEcJKD","time":1742710908,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"ta3PafPyMBcb","time":1742710908,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"dWTG4kXPf8EJ","time":1742710908,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"hAQG2AbiIX3B","time":1742711023,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"PSBUSG8sdDQy","time":1742711023,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"WIkAZCgz3YN3","time":1742711023,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"taqEq5qwX8Ly","time":1742711040,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"2uLWiiZ4T7By","time":1742711040,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"n2AyJZ0aSEZP","time":1742711073,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"dIkE5d5PlhIM","time":1742711083,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"LMmS7FGjDXyA","time":1742711083,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"xyYLTXtqSryB","time":1742711083,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"dVA0VD2H5WKo","time":1742711083,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"YtrNklVTzaro","time":1742711291,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"1g3ZYcKvdLtw","time":1742711291,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"T7bRr1pNj8Uo","time":1742711303,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"89QEJYDSiTRw","time":1742711303,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"qpNFc7xL4zgR","time":1742711304,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"IxMumpae9wR7","time":1742711304,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"7VzTvzNbjPBd","time":1742711399,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"2iLf6T4xqpgf","time":1742711399,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"MA6hJhM9eHze","time":1742711399,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"oPFDKmBty7zu","time":1742711425,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"5FQN6vE1pneX","time":1742711425,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"kepIvuZZxBkB","time":1742711448,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"GjdpQn7BC9VV","time":1742711458,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"dhMfu3MoalaX","time":1742711458,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"68kieeVA2T3j","time":1742711458,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"4T7eeO1tG4tp","time":1742711458,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
🔄 Restarted Docker service: ytdlmeili
🔄 Restarted Docker service: ytdlredis
🔄 Restarted Docker service: ytdldev
🔄 Restarted Docker service: ytdldbdev
🔄 Restarted Docker service: ytdlmeilidev
🔄 Restarted Docker service: ytdlredisdev
{"id":"dxxw0EGcXJof","time":1742711695,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev,"}
📢 Notified: Restarted services for /mnt/Purple: ytdl, ytdldb, ytdlmeili, ytdlredis, ytdldev, ytdldbdev, ytdlmeilidev, ytdlredisdev, 
✅ /mnt/Se7en (//10.0.0.5/J) is back online
{"id":"7ND67C6daj3s","time":1742711695,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Se7en (//10.0.0.5/J) remounted successfully"}
📢 Notified: /mnt/Se7en (//10.0.0.5/J) remounted successfully
🔄 Restarting services for /mnt/Se7en: fancy-ukraine
🔄 Restarted Docker service: fancy-ukraine
{"id":"FyVrXCiJusIx","time":1742711764,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Se7en: fancy-ukraine,"}
📢 Notified: Restarted services for /mnt/Se7en: fancy-ukraine, 
✅ /mnt/Jellyfin (//10.0.0.5/O) is back online
{"id":"HP81Oyz4elbg","time":1742711764,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully"}
📢 Notified: /mnt/Jellyfin (//10.0.0.5/O) remounted successfully
✅ /mnt/Zero (//10.0.0.5/R) is back online
{"id":"dSNETXMKLOrt","time":1742711764,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Zero (//10.0.0.5/R) remounted successfully"}
📢 Notified: /mnt/Zero (//10.0.0.5/R) remounted successfully
✅ /mnt/10tb2 (//10.0.0.5/T) is back online
{"id":"4idQ8Nozf6Nl","time":1742711764,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb2 (//10.0.0.5/T) remounted successfully"}
📢 Notified: /mnt/10tb2 (//10.0.0.5/T) remounted successfully
🔄 Restarting services for /mnt/10tb2: flaresolverr prowlarr radarr sonarr wg-delugevpn wg-storm
🔄 Restarted Docker service: flaresolverr
🔄 Restarted Docker service: prowlarr
🔄 Restarted Docker service: radarr
🔄 Restarted Docker service: sonarr
🔄 Restarted Docker service: wg-delugevpn
🔄 Restarted Docker service: wg-storm
{"id":"liVulBKlQxuT","time":1742712100,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm,"}
📢 Notified: Restarted services for /mnt/10tb2: flaresolverr, prowlarr, radarr, sonarr, wg-delugevpn, wg-storm, 
✅ /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) is back online
{"id":"75cD5Qz6Sfm0","time":1742712100,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully"}
📢 Notified: /mnt/Ronin (/dev/disk/by-uuid/d9363f2a-dce6-4156-a4f6-97dbc56da0f2) remounted successfully
✅ /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) is back online
{"id":"g7udydFokPWe","time":1742712100,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully"}
📢 Notified: /mnt/Kingston (/dev/disk/by-uuid/a85b3ded-84d3-4b24-9cd0-4d3fddc3681a) remounted successfully
🔄 Restarting services for /mnt/Kingston: httpdir
🔄 Restarted Docker service: httpdir
{"id":"KM2jqTLIC4vz","time":1742712137,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/Kingston: httpdir,"}
📢 Notified: Restarted services for /mnt/Kingston: httpdir, 
✅ /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) is back online
{"id":"uDAYvv8oRix5","time":1742712137,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully"}
📢 Notified: /mnt/10tb1 (/dev/disk/by-uuid/d5c03687-a18d-4c17-a408-9e4ab4838510) remounted successfully
🔄 Restarting services for /mnt/10tb1: lychee lychee_db
🔄 Restarted Docker service: lychee
🔄 Restarted Docker service: lychee_db
{"id":"aeRqHWABP1Cc","time":1742712256,"event":"message","topic":"automount_nfs","message":"MountMonitor: Restarted services for /mnt/10tb1: lychee, lychee_db,"}
📢 Notified: Restarted services for /mnt/10tb1: lychee, lychee_db, 
✅ /mnt/C (//10.0.0.5/C) is back online
{"id":"WQBTLrr3lznF","time":1742712266,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/C (//10.0.0.5/C) remounted successfully"}
📢 Notified: /mnt/C (//10.0.0.5/C) remounted successfully
✅ /mnt/E (//10.0.0.5/E) is back online
{"id":"IYUWnqHsKwnH","time":1742712266,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/E (//10.0.0.5/E) remounted successfully"}
📢 Notified: /mnt/E (//10.0.0.5/E) remounted successfully
✅ /mnt/Yellow (//10.0.0.5/F) is back online
{"id":"tvXkjMOrvGuq","time":1742712266,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Yellow (//10.0.0.5/F) remounted successfully"}
📢 Notified: /mnt/Yellow (//10.0.0.5/F) remounted successfully
✅ /mnt/Purple (//10.0.0.5/I) is back online
{"id":"T3bH0Wz8eTmm","time":1742712266,"event":"message","topic":"automount_nfs","message":"MountMonitor: /mnt/Purple (//10.0.0.5/I) remounted successfully"}
📢 Notified: /mnt/Purple (//10.0.0.5/I) remounted successfully
🔄 Restarting services for /mnt/Purple: ytdl ytdldb ytdlmeili ytdlredis ytdldev ytdldbdev ytdlmeilidev ytdlredisdev
🔄 Restarted Docker service: ytdl
🔄 Restarted Docker service: ytdldb
```
</details>
