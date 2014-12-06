#! /usr/bin/env sh

# docker images | grep -q swarm-ui ||
docker build -t swarm-ui .

TOKEN=$1
shift

echo "I think the token is $TOKEN"

docker run -e "TOKEN=$TOKEN" -d --publish 80:80 --publish 4243:4243 --volume $(pwd)/app:/usr/share/nginx/html $@ --name swarm-ui swarm-ui
