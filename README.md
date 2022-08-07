# Rezus2all_infra
Rezus2all Infra repository

--- 6 Сборка образов VM при помощи Packer ---

1) Создание файла-шаблона ubuntu16.json - вписаны блоки "builders" и "provisioners", прописан доступ в интернет через NAT.
2) Проведена сборка образа.
3) Выполнено развертывание ВМ на основе созданного образа.
4) Дополнительно создан файл переменных variables.json.examples.
5) Создан шаблон для создание bake-образа immutable.json с условием, что название образа reddit-full.
6) Создан файл скрипта create-reddit-vm.sh для развертывания ВМ из созданного пакером образа.

--- 5 Основные сервисы Yandex Cloud ---

testapp_IP = 51.250.73.231
testapp_port = 9292

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
