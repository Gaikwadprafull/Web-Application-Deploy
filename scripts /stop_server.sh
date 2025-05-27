#!/bin/bash
set -e

echo "Stopping existing app..."
APP_PID=$(pgrep -f app.py)
if [ -n "$APP_PID" ]; then
  kill -9 $APP_PID
  echo "App stopped."
else
  echo "No app running."
fi
