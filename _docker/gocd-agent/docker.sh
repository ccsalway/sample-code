#!/usr/bin/env bash

# build docker agent
docker build . -t gocd-agent-docker

# run docker agent
docker run -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp/godata:/godata \
    -e GO_SERVER_URL=https://localhost:8154/go \
    -e AGENT_AUTO_REGISTER_KEY=4c635d73-9cbe-4ecc-a68c-4b1fbb6eeca0 \
    --network host \
    gocd-agent-docker
