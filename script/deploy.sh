#!/usr/bin/env bash
set -e

cat ~/my_password.txt | docker login --username fahadharoon11 --password-stdin
docker pull zutherb/monolithic-shop
docker tag zutherb/monolithic-shop:latest fahadharoon11/monolithic:latest
docker push fahadharoon11/monolithic:latest
