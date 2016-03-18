#!/usr/bin/env bash

getWebServer() {
  [ -z "${DOCKER_MACHINE_NAME}" ] || WEBSERVER=$(docker-machine ip "${DOCKER_MACHINE_NAME}")
  WEBSERVER=${WEBSERVER:-localhost}

  echo  $WEBSERVER
}

curl -i $(getWebServer):8080
