#!/bin/bash
cd /home/ec2-user/app.py
sudo yum update -y
sudo yum install python3 -y
pip3 install -r requirements.txt
