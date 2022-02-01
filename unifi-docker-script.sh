#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh

curl -fsSL https://raw.githubusercontent.com/maxcerny/unifi-docker-script/main/unifi-update.sh -o unifi-update.sh

sh get-docker.sh

docker run -d \
  --name=unifi-controller \
  -e PUID=1000 \
  -e PGID=1000 \
  --network host \
  -v /etc/unifi:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/unifi-controller
