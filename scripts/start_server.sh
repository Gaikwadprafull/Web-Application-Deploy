#!/bin/bash

cd /home/ec2-user/myapp

# Pull the latest code
git pull origin dev

# Stop and remove existing container if running
docker stop web-app || true
docker rm web-app || true

# Remove old image
docker rmi web-app-image || true

# Build new image
docker build -t web-app-image .

# Run container
docker run -d --name web-app -p 5000:5000 web-app-image
