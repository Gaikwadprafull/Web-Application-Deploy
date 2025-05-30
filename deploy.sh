#!/bin/bash

cd /home/ec2-user/myapp

echo "🔄 Pulling latest changes..."
git pull origin dev

echo "🐳 Stopping Docker containers..."
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

echo "✅ Building Docker containers..."
docker build -t myapp .

echo "🚀 Running app..."
docker run -d -p 5000:5000 myapp
