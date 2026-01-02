#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

# Parse options
TZ=$(jq --raw-output '.TZ // "UTC"' $CONFIG_PATH)
PUID=$(jq --raw-output '.PUID // "1000"' $CONFIG_PATH)
PGID=$(jq --raw-output '.PGID // "1000"' $CONFIG_PATH)
DOWNLOAD_PATH=$(jq --raw-output '.download_path // "/share/downloads"' $CONFIG_PATH)

# Export environment variables
export TZ
export PUID
export PGID

echo "Starting RDT Client Add-on..."
echo "Configuration: TZ=$TZ, PUID=$PUID, PGID=$PGID"
echo "Download Path: $DOWNLOAD_PATH"

# Ensure directories exist
mkdir -p /data/db
mkdir -p "$DOWNLOAD_PATH"

# Execute upstream entrypoint
exec /init
