#!/bin/bash
set -euxo pipefail

docker pull "$DOCKER_CACHE_IMAGE" || true
docker build --cache-from="$DOCKER_CACHE_IMAGE" --tag="$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG" .
