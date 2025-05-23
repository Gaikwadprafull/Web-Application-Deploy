#!/bin/bash
cd /home/ec2-user/app
export PORT=80
sudo nohup python3 app.py > app.log 2>&1 &
