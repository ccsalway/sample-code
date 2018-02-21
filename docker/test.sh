#!/usr/bin/env bash

# run tests - just remove /tmp when running the Agent on its own EC2
docker run --rm \
    -v /tmp/godata/pipelines/${GO_PIPELINE_NAME}/reports:/usr/src/app/reports \
    --entrypoint sh app/sample-code tasks/nosetest.sh
