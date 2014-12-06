#! /usr/bin/env sh

docker images | grep -q swarm-ui || docker build -t swarm-ui .

TOKEN=$1
shift

if [ ! ${TOKEN} ]; then
  echo "Remember to set a token!"
  echo "hint: run.sh <TOKEN>"
  exit 1
fi

echo "I think the token is $TOKEN"
echo

docker run -e "TOKEN=$TOKEN" -d --publish 80:80 --volume $(pwd)/app:/usr/share/nginx/html $@ --name swarm-ui swarm-ui
