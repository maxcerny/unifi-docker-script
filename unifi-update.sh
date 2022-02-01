docker pull lscr.io/linuxserver/unifi-controller

docker stop unifi-controller

docker rm unifi-controller

docker run -d \
  --name=unifi-controller \
  -e PUID=1000 \
  -e PGID=1000 \
  --network host \
  -v /etc/unifi:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/unifi-controller

docker image prune
