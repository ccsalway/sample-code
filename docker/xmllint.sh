#!/usr/bin/env bash

# convert mini to expanded - just remove /tmp when running the Agent on its own EC2
docker run -i --rm \
    -v /tmp/godata/pipelines/${GO_PIPELINE_NAME}/reports:/data \
    mribeiro/xmllint \
    junit.min.xml > junit.xml
