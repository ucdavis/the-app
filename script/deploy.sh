#!/bin/bash

set -e
bash -c "echo \"${DOCKER_PASS}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin"
docker pull zutherb/monolithic-shop:latest
docker tag zutherb/monolithic-shop:latest ${DOCKER_LOGIN}/monolithic-shop:latest
docker push ${DOCKER_LOGIN}/monolithic-shop:latest

