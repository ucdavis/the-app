#!/usr/bin/env bash
set -e

echo "${DOCKER_PASSWORD}" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
docker push $DOCKER_LOGIN/web1066-the-app:latest