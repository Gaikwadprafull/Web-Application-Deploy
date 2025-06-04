#!/bin/bash
echo "Starting Python app..." >> /tmp/deploy.log
cd /home/ec2-user/myapp
nohup python3 app.py > /tmp/app.log 2>&1 &
echo "Started app.py using nohup" >> /tmp/deploy.log
