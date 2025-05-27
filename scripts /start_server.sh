#!/bin/bash
set -e

echo "Starting application..."
cd /home/ec2-user/myapp

nohup python3 app.py > app.log 2>&1 &
echo "App started."
