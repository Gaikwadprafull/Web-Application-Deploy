#!/bin/bash
source "$(dirname "$0")/env.sh"

cd "$APP_DIR"

nohup python3 app.py > app.log 2>&1 &
