#!/bin/bash
echo "Setting execute permissions on scripts..."
ls -l /home/ec2-user/app/scripts
chmod +x /home/ec2-user/app/scripts/*.sh
echo "Permissions set."
