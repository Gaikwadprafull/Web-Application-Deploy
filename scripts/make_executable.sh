#!/bin/bash

# Make all shell scripts executable
chmod +x scripts/*.sh

# Add all updated shell scripts to staging
git add scripts/*.sh

# Commit changes with a clear message
git commit -m "Update: made all scripts executable and added CloudWatch setup"

# Push to the target branch (stage/dev/etc.)
git push origin stage
