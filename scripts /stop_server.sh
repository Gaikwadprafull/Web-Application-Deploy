#!/bin/bash
set -e

echo "Stopping existing application..."
# Example: kill process by name or port
APP_PID=$(pgrep -f myapp)
if [ -n "$APP_PID" ]; then
  kill -9 $APP_PID
  echo "App stopped successfully."
else
  echo "No running app found."
fi
