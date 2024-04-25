#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh

curl -fsSL https://raw.githubusercontent.com/maxcerny/unifi-docker-script/main/docker-compose.yaml -o docker-compose.yaml

curl -fsSL https://raw.githubusercontent.com/maxcerny/unifi-docker-script/main/init-mongo.js -o init-mongo.js

https://raw.githubusercontent.com/maxcerny/unifi-docker-script/main/init-mongo.js

sh get-docker.sh

docker compose up -d
