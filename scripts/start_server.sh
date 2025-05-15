#!/bin/bash
cd /home/ec2-user/deploy
echo "Starting app..."
nohup node app.js > app.log 2>&1 &
