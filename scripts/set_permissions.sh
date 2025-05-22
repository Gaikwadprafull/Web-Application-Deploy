#!/bin/bash

APP_DIR="/home/ec2-user/app"

if [ -d "$APP_DIR" ]; then
    chmod +x $APP_DIR/*.sh
else
    echo "Directory $APP_DIR does not exist."
    exit 1
fi
