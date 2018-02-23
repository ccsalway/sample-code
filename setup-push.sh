#!/usr/bin/env bash

docker tag ${DOCKER_TAG} ${DOCKER_URL}/${DOCKER_TAG}

docker push ${DOCKER_URL}/${DOCKER_TAG}
