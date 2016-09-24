#!/usr/bin/env bash

getWebServer() {
  echo  localhost
}

PORT=8089
curl -i $(getWebServer):${PORT}
