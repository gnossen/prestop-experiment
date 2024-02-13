#!/bin/bash

set -euxo pipefail

VERSION=6
TAG=gcr.io/grpc-testing/rbellevi/pre-stop-hook-test:${VERSION}

docker build -t ${TAG} .
docker push ${TAG}
