#!/bin/bash

# Variables
ACCOUNT_ID=648908580279
REGION=ap-south-1
REPO_NAME=dev-env
APP_NAME=dev-env

# Move to app directory (optional if code not needed from Git)
cd /home/ec2-user/myapp || exit 1

# Pull latest code (if necessary)
git pull origin dev

# Authenticate Docker with ECR
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com

# Stop and remove existing container if running
docker stop $APP_NAME || true
docker rm $APP_NAME || true

# Pull latest image from ECR
docker pull $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:latest

# Run container
docker run -d --name $APP_NAME -p 5000:5000 $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:latest
