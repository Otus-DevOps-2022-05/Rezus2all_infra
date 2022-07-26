#!/bin/bash
#Установка MongoDB
$ sudo apt-get update
$ sudo apt-get install -y mongodb-org
#Запускаем MongoDB:
$ sudo systemctl start mongod
#Добавляем в автозапуск:
$ sudo systemctl enable mongod
