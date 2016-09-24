#!/bin/sh
# Install Docker on Ubuntu
#
# Vagrant Docker provisioner takes 9+ minutes
# Installing with Packages takes 2+ minutes
# Ref: https://docs.docker.com/engine/installation/linux/ubuntulinux/
#
apt-get update -qq
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
apt-get update -qq
apt-get purge lxc-docker
apt-get install linux-image-extra-$(uname -r)
apt-get install apparmor
apt-get install -y docker-engine
usermod -a -G docker vagrant
#service docker start
