#!/bin/bash
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock*

sleep 60
sudo apt-get update
sudo apt-get install -y mongodb-server
sudo systemctl enable mongodb
sudo systemctl start mongodb