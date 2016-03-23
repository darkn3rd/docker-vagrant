#!/bin/sh

docker-compose stop
docker-machine rm -y vagrant
vagrant halt
