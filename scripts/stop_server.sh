#!/bin/bash

echo "Stopping existing Docker container..."

CONTAINER_ID=$(docker ps -q --filter "name=flaskapp")

if [ ! -z "$CONTAINER_ID" ]; then
  echo "Stopping container ID: $CONTAINER_ID"
  docker stop $CONTAINER_ID
  docker rm $CONTAINER_ID
else
  echo "No running container found."
fi