#!/bin/bash
set -e

echo "Installing dependencies..."
cd /home/ec2-user/myapp
# Example for Python
pip3 install -r requirements.txt
