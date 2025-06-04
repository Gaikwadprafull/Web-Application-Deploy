#!/bin/bash

echo "Running install_dependencies.sh..." >> /tmp/deploy.log

cd /home/ec2-user/myapp

sudo yum update -y
sudo yum install -y python3 docker
sudo pip3 install flask
pip3 install -r requirements.txt >> /tmp/deploy.log 2>&1

sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

echo "Install dependencies completed" >> /tmp/deploy.log
