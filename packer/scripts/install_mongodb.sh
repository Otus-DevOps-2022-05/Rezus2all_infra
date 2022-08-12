#!/bin/bash
sleep 60
sudo apt-get update
sudo apt-get install -y mongodb-server
sudo systemctl enable mongodb
sudo systemctl start mongodb
