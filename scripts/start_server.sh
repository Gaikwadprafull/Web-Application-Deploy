#!/bin/bash
echo "Starting Dockerized Flask app..." >> /tmp/deploy.log
cd /home/ec2-user/myapp

# Stop and remove previous container (if any)
docker stop flaskapp-container || true
docker rm flaskapp-container || true

# Build Docker image
docker build -t flaskapp . >> /tmp/deploy.log 2>&1

# Run the container
docker run -d --name flaskapp-container -p 5000:5000 flaskapp >> /tmp/deploy.log 2>&1

echo "Flask Docker container started." >> /tmp/deploy.log
