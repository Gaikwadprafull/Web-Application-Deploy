#!/bin/bash 
cd /home/ec2-user/myapp
  

sudo pkill -f app.py 

sleep 1 

sudo nohup python3 /home/ec2-user/myapp/app.py > /tmp/output.log 2>&1 & 

echo "App restarted. Logs: /tmp/output.log" 
