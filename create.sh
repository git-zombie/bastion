#!/bin/sh
sudo docker create \
  --name=bastion \
  -h bastion \
  -e PGID=1000 -e PUID=1000  \
  -e TZ=America\New_York -p 81:80 \
#  --restart=always \
  --network=iot \
  --ip=192.168.1.206 \
  bastion 
