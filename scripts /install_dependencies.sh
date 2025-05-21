#!/bin/bash

sudo yum update -y
sudo yum install -y python3
cd /home/ec2-user/app
pip3 install -r requirements.txt
