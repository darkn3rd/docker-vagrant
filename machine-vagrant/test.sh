#!/usr/bin/env bash

getWebServer() {
  # test if Docker-Machine is configured
  [ -z "${DOCKER_MACHINE_NAME}" ] || \
    WEBSERVER=$(docker-machine ip "${DOCKER_MACHINE_NAME}") # set to docker ip
  WEBSERVER=${WEBSERVER:-localhost}  # default to localhost if not set

  echo  $WEBSERVER
}

curl -i $(getWebServer):8080
