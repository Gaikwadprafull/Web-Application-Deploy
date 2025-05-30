#!/bin/bash

# Stop and remove Docker container if it exists
docker stop web-app || true
docker rm web-app || true
