#!/bin/bash

APP_DIR="/home/ec2-user/app"

if [ -d "$APP_DIR" ]; then
  echo "Setting permissions on $APP_DIR"
  chmod -R u+x "$APP_DIR"
else
  echo "Error: $APP_DIR does not exist."
  exit 1
fi
