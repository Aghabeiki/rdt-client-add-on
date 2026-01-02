# RDT Client Home Assistant Add-on

This add-on is a wrapper for [RDT Client](https://github.com/rogerfar/rdt-client), a Real Debrid Torrent Client.

## Configuration

**Note**: This add-on requires a Real Debrid account.

### Option: `TZ`

The timezone setting, e.g., `Europe/London`.

### Option: `PUID` and `PGID`

User and Group ID to run the application. Default is 1000.
Recommended to keep as 1000 unless you have specific permission needs.

### Option: `download_path`

The path where downloads will be saved. Default is `/share/downloads`.
**Important**: You must also configure this path inside the RDT Client web interface under Settings > Download Client > Download Path.

## Persistence

The add-on persists data in the `/data` directory.
Downloads are stored in the configured `download_path`.

To access downloads from other add-ons or network shares, ensure the `download_path` is set to a shared location like `/share/downloads`.
