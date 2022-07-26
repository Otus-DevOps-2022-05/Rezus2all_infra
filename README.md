# Rezus2all_infra
Rezus2all Infra repository

--- 4 Локальное окружение инженера. ChatOps и визуализация рабочих процессов. Командная работа с Git. Работа в GitHub---

Исследовать способ подключения к someinternalhost в одну команду из вашего рабочего устройства:
ssh -i ~/.ssh/appuser -A -tt appuser@51.250.7.124 ssh 10.128.0.30

Предложить вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost:

внести (создать) в конфиг данные подключения:
Host bastion
User appuser
Port 22
HostName 51.250.7.124 (мой внешний IP)

Host someinternalhost
User appuser
Port 22
HostName 10.128.0.30 (мой внутренний IP)
ProxyJump bastion

конфигурационный файл для подключения к VPN - cloud-bastion.ovpn
bastion_IP = 51.250.7.124
someinternalhost_IP = 10.128.0.30

--- 5 Основные сервисы Yandex Cloud 

testapp_IP = 51.250.73.231
testapp_port = 9292