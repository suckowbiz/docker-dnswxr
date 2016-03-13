#!/usr/bin/env bash

DOCKER_IMAGE="suckowbiz/dnswxr"
DOCKER=`which docker`
$DOCKER run \
  --publish 0.0.0.0:80:8080 \
  $DOCKER_IMAGE 
