#!/usr/bin/env bash

getWebServer() {
  echo  localhost # force localhost
}

curl -i $(getWebServer):8080
