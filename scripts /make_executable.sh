#!/bin/bash
set -e

echo "Making scripts executable..."
chmod +x /home/ec2-user/myapp/scripts/*.sh
#!/bin/bash
set -e

echo "[stop_server.sh] Stopping any running app..."

PID=$(pgrep -f app.py || true)

if [[ -n "$PID" ]]; then
  echo "Found running app with PID: $PID"
  kill -9 $PID
  echo "App stopped."
else
  echo "No app running."
fi
