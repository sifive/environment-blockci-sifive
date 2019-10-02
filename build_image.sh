#!/bin/bash
set -euxo pipefail

docker build --tag="$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG" .
