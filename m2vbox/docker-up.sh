#!/bin/sh

# Destructively Remove Existing Docker Machien named vagrant
docker-machine ls | grep -q '^toolbox' && docker-machine rm -y toolbox

# Create New Vagrant Environment
docker-machine create --driver virtualbox toolbox

# Configure Environment
eval "$(docker-machine env toolbox)"

# Boostrap Container Environment
docker-compose up -d
