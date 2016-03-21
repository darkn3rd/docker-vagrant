#!/usr/bin/env bash

getWebServer() {
  echo  localhost
}

PORT=8088
curl -i $(getWebServer):${PORT}
