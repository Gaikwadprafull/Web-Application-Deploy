#!/bin/bash
source "$(dirname "$0")/env.sh"

echo "Setting permissions for $APP_DIR"

if [ -d "$APP_DIR" ]; then
    chmod -R u+x "$APP_DIR"
else
    echo "Directory $APP_DIR does not exist"
    exit 1
fi
