#!/usr/bin/env bash

# build image
docker build . -t gocd-agent-docker

# run image
docker run -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp/reports:/tmp/reports \
    -e GO_SERVER_URL=https://$(docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' gocd_server):8154/go \
    -e AGENT_AUTO_REGISTER_KEY=4c635d73-9cbe-4ecc-a68c-4b1fbb6eeca0 \
    gocd-agent-docker
