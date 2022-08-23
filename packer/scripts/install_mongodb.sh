#!/bin/bash
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock*

apt-get update
sleep 60
apt-get install -y mongodb-server
systemctl enable mongodb
systemctl start mongodb
