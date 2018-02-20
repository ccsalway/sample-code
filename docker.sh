#!/bin/sh

# exit on first non-zero exit code
set -ex

# build image
docker build . -t app/sample-code

# run tests - just remove /tmp when running the Agent on its own EC2
docker run --rm \
    -v /tmp/godata/pipelines/${GO_PIPELINE_NAME}/reports:/usr/src/app/reports \
    --entrypoint sh app/sample-code tests.sh

# run app
docker run --rm -i --entrypoint python app/sample-code entry.py

# cleanup
docker rmi app/sample-code
