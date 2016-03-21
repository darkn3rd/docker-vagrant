#!/bin/sh

install_nodejs() {
  # Install NodeJS
  NODE_REPO_APT_SOURCE="/etc/apt/sources.list.d/nodesource.list"
  if [ ! -f "${NODE_REPO_APT_SOURCE}" ]; then
      curl -sL https://deb.nodesource.com/setup_5.x | bash -
  fi

  apt-get -y install nodejs
}

install_postgres() {
  PG_VERSION=9.4
  PG_REPO_APT_SOURCE="/etc/apt/sources.list.d/pgdg.list"
  if [ ! -f "${PG_REPO_APT_SOURCE}" ]
  then
    echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > "$PG_REPO_APT_SOURCE"
    wget --quiet -O - https://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -
  fi

  apt-get -y install "postgresql-$PG_VERSION" "postgresql-contrib-$PG_VERSION"
}

setup_app() {
  # Create app directory if it doesn't already exist
  APP_HOME="/usr/src/app"
  mkdir -vp ${APP_HOME}

  # Install app dependencies
  su -s /bin/bash -c "{ cd ${APP_HOME}; npm install --no-color; }"
}
