#!/bin/bash
#Установка MongoDB
$ sudo apt-get update
$ sudo apt-get install -y mongodb
#Запускаем MongoDB:
$ sudo systemctl start mongodb
#Добавляем в автозапуск:
$ sudo systemctl enable mongodb
