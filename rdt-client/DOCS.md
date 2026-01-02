# RDT Client Home Assistant Add-on

This add-on is a wrapper for [RDT Client](https://github.com/rogerfar/rdt-client), a Real Debrid Torrent Client.

## Configuration

**Note**: This add-on requires a Real Debrid account.

### Option: `TZ`

The timezone setting, e.g., `Europe/London`.

### Option: `PUID` and `PGID`

User and Group ID to run the application. Default is 1000.
Recommended to keep as 1000 unless you have specific permission needs.

## Persistence

The add-on persists data in the `/data` directory.
Downloads are stored in `/data/downloads`.

To access downloads from other add-ons or network shares, you might need to adjust paths within the RDT Client web interface to point to `/share` if user mappings allow, but default configuration keeps it contained.
