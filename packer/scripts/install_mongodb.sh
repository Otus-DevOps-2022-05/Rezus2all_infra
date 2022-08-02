#!/bin/bash
#Установка MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb http://mirrors.aliyun.com/mongodb/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install -y mongodb-org
#Запускаем MongoDB:
sudo systemctl enable mongod
#Добавляем в автозапуск:
sudo systemctl start mongod
