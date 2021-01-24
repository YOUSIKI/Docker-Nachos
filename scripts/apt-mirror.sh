#!/bin/bash

if [ -z $DOCKER_MIRROR ]; then
  echo "using default apt sources..."
else
  echo "using china apt mirror"
  cp /mirrors/$DOCKER_MIRROR.sources.list /etc/apt/sources.list
fi
