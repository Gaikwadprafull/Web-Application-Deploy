#!/bin/bash
cd /home/ec2-user/app.py
nohup python3 app.py > app.log 2>&1 &
