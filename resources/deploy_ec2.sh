#!/bin/bash

# This gets run ON the EC2 instance (NOT in the GitHub Actions runner)
set -ex # exit on error
cd /home/ec2-user/dice

# git pull
git fetch --all # fetch all branches
git switch lab # switch to the lab branch

sudo systemctl restart diceapp
sudo systemctl status diceapp --no-pager -l