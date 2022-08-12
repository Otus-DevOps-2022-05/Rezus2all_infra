#!/bin/bash
set -e
APP_DIR=${1:-$HOME}
sudo apt-get update
sudo apt-get install -y git
sleep 30
git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
sleep 30
cd $APP_DIR/reddit
sudo bundle install
sleep 30
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
