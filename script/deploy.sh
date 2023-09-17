set -e

docker tag zutherb/monolithic-shop:latest $DOCKER_USERNAME/monolithic-shop:latest
docker push $DOCKER_USERNAME/monolithic-shop:latest