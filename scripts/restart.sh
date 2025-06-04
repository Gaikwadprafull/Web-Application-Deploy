#!/bin/bash

# Stop running app
pkill -f app.py || true
sleep 1

# Start new app version
cd /home/ec2-user/myapp
nohup python3 app.py > /tmp/output.log 2>&1 &

echo "App restarted. Logs: /tmp/output.log"
