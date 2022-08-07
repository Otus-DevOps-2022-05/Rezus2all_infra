#!/bin/bash

#create new instance
echo 'Create instance with packer'
yc compute instance create \
  --name reddit-packer-app \
  --hostname reddit-packer-app \
  --memory=4 \
  --create-boot-disk image-folder-id=b1gn3qkiobqao5rviv11,image-family=reddit-full,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser
