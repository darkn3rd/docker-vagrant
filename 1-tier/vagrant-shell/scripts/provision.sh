#!/bin/sh

# Create app directory if it doesn't already exist
APP_HOME=${APP_HOME:-"/opt/myapp"}

# Add Reference to Ndoe JS repository
NODE_REPO_APT_SOURCE="/etc/apt/sources.list.d/nodesource.list"
if [ ! -f "${NODE_REPO_APT_SOURCE}" ]; then
    curl -sL https://deb.nodesource.com/setup_6.x | bash -
fi

# Install NodeJS using Node JS repository
apt-get -y install nodejs

# setup Application Home
mkdir -vp ${APP_HOME}
chown -R vagrant:vagrant ${APP_HOME}

# Install app dependencies
su -s /bin/bash -c "{ cd ${APP_HOME}; npm install --no-color; }"
