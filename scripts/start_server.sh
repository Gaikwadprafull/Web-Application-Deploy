#!/bin/bash

echo "Starting new Docker container..."

REPO_URI=851725602228.dkr.ecr.us-east-1.amazonaws.com/prafull-prod-env
IMAGE_TAG=latest

# Login to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $REPO_URI

# Pull and run the image
docker pull $REPO_URI:$IMAGE_TAG
docker run -d -p 5000:5000 --name flaskapp $REPO_URI:$IMAGE_TAG