#!/bin/bash
cd /home/ec2-user/myapp
sudo yum update -y
sudo pip3 install flask 
sudo yum install python3 -y
pip3 install -r requirements.txt
