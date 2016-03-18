#!/bin/sh

PRIVATE_IP="10.10.10.4"
PRIVATE_KEY=".vagrant/machines/default/virtualbox/private_key"

vagrant up

# Destructively Remove Existing Docker Machien named vagrant
docker-machine ls | grep -q '^vagrant' && docker-machine rm -y vagrant

# Create New Vagrant Environment
docker-machine create --driver generic  \
 --generic-ssh-user vagrant \
 --generic-ssh-key "${PWD}/${PRIVATE_KEY}"  \
 --generic-ip-address "${PRIVATE_IP}" \
 vagrant

# Configure Environment
eval "$(docker-machine env vagrant)"

# Configure Customer WEBSERVER address
[ -z "${DOCKER_MACHINE_NAME}" ] || WEBSERVER=$(docker-machine ip "${DOCKER_MACHINE_NAME}") && WEBSERVER="localhost"
export WEBSERVER
