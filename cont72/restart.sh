#!/bin/bash
#docker restart php7
cd /mnt/DATA/Docker/containers/oint_php72

./stop.sh
./run.sh

docker ps -a
sleep 3
docker ps -a
