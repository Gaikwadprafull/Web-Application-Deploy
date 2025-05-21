#!/bin/bash

cd /home/ec2-user/app
nohup python3 app.py > flask.log 2>&1 &
