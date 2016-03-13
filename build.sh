#!/usr/bin/env bash

IMAGE_VERSION="latest"
IMAGE_NAME="suckowbiz/dnswxr"
DOCKER=`which docker`
$DOCKER build \
  --tag $IMAGE_NAME:$IMAGE_VERSION \
  .
