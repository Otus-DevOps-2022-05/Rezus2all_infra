#!/bin/bash
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock*

apt update
apt install -y mongodb-server
sleep 60
systemctl enable mongodb
systemctl start mongodb
