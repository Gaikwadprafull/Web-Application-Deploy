#!/bin/bash
cd /home/ec2-user/myapp
sudo pkill -f app.py || true
sleep 1
echo "App started. Logs: /tmp/output.log"
nohup python3 app.py > app.log 2>&1 &
