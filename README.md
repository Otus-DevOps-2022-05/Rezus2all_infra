# Rezus2all_infra
Rezus2all Infra repository

ДЗ 5
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
