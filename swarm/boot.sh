#! /usr/bin/env sh

echo connecting to $TOKEN
/swarm manage --addr=0.0.0.0:2375 --token=$TOKEN
