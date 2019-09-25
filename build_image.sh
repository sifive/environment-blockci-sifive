#!/bin/bash
set -euxo pipefail

docker build --file=environment-blockci.Dockerfile --tag="$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG" .
