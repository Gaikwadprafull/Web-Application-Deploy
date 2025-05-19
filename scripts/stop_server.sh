#!/bin/bash

PID=$(pgrep -f "python3 app.py")
if [ -n "$PID" ]; then
  echo "Stopping Flask application with PID: $PID"
  kill -9 $PID
else
  echo "No Flask application running."
fi
