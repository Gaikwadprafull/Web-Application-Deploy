#!/bin/bash

APP_DIR="/home/ec2-user/app"

if [ -d "$APP_DIR" ]; then
  echo "Setting permissions and ownership on $APP_DIR"

  # Add execution permissions for user (your original line)
  chmod -R u+x "$APP_DIR"

  # Set standard directory/file permissions
  chmod -R 755 "$APP_DIR"

  # Ensure correct ownership
  chown -R ec2-user:ec2-user "$APP_DIR"
else
  echo "Error: $APP_DIR does not exist."
  exit 1
fi
