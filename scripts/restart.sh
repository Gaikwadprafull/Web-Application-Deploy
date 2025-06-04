#!/bin/bash

cd /home/ec2-user/myapp

# Stop and remove old container if exists
sudo docker stop flaskapp || true
sudo docker rm flaskapp || true

# Remove old image (optional but helpful for clean rebuild)
sudo docker rmi flaskapp || true

# Build new Docker image from updated source
sudo docker build -t flaskapp .

# Run new container on port 5000
sudo docker run -d -p 5000:5000 --name flaskapp flaskapp

echo "✅ Docker container restarted with latest code."
