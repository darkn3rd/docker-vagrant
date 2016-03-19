#!/bin/sh

# Install NodeJS
NODE_REPO_APT_SOURCE="/etc/apt/sources.list.d/nodesource.list"
if [ ! -f "${NODE_REPO_APT_SOURCE}" ]; then
    curl -sL https://deb.nodesource.com/setup_5.x | bash -
fi

apt-get -y install nodejs

# Create app directory if it doesn't already exist
APP_HOME="/usr/src/app"
mkdir -vp ${APP_HOME}

# Install app dependencies
su -s /bin/bash -c "{ cd ${APP_HOME}; npm install --no-color; }"
