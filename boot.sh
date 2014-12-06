#! /usr/bin/env sh

# if [ ! ${CONSUL_LOCATION} ]; then
#   echo "Please set CONSUL_LOCATION"
#   exit 1
# fi

# sed -i"" "s/%%CONSUL_LOCATION%%/${CONSUL_LOCATION}/g" /etc/nginx/conf.d/default.conf

echo connecting to $TOKEN
/swarm manage --token=$TOKEN --addr=0.0.0.0:4243 &

nginx -g "daemon off;"
