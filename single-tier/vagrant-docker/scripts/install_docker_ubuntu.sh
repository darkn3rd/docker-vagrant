#!/usr/bin/env bash
# Install Docker on Ubuntu
#   by Joaquin Menchaca
#   on Apr 19, 2016
#   updated Sep 26, 2016
#
# Vagrant Docker provisioner takes 9+ minutes
# Installing with Packages takes 2+ minutes
# Ref: https://docs.docker.com/engine/installation/linux/ubuntulinux/
#

DOCKER_REPO_APT_SOURCE="/etc/apt/sources.list.d/docker.list"
KEYSERVER="p80.pool.sks-keyservers.net"
DOCKER_KEY="58118E89F3A912897C070ADBF76221572C52609D"

if [ ! -f ${DOCKER_REPO_APT_SOURCE} ]; then
  apt-key adv --keyserver hkp://${KEYSERVER}:80 --recv-keys ${DOCKER_KEY}
  echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > ${DOCKER_REPO_APT_SOURCE}
fi

# Remove Packages
dpkg -s "lxc-docker" &> /dev/null && apt-get purge lxc-docker

# Add to Packages List
PACKAGES=""
dpkg -s "apt-transport-https" &> /dev/null || PACKAGES="${PACKAGES} apt-transport-https"
dpkg -s "ca-certificates" &> /dev/null || PACKAGES="${PACKAGES} ca-certificates"
dpkg -s "linux-image-extra-$(uname -r)" &> /dev/null || PACKAGES="${PACKAGES} linux-image-extra-$(uname -r)"
dpkg -s "apparmor" &> /dev/null || PACKAGES="${PACKAGES} apparmor"
dpkg -s "docker-engine" &> /dev/null || PACKAGES="${PACKAGES} docker-engine"

# Install Packages
apt-get update -qq && apt-get -y install ${PACKAGES}

# Add vagrant to docker group
usermod -a -G docker vagrant
