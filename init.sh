#!/bin/bash

docker build -t nginx-static-app .
yc container registry configure-docker
docker tag nginx-static-app cr.yandex/crpueiqeqavuee81fvro/nginx-static-app:latest
docker push cr.yandex/crpueiqeqavuee81fvro/nginx-static-app:latest