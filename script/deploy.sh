#!/usr/bin/env bash
set -e

bash -c "echo \"${DOCKER_PASS}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin"
docker tag zutherb/monolithic-shop:latest ${DOCKER_LOGIN}/theapp:latest
docker push ${DOCKER_LOGIN}/theapp
