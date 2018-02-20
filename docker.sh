#!/usr/bin/env bash

echo "Building: ${GO_PIPELINE_NAME}"

# build image
docker build . -t app/sample-code

# run tests
docker run --rm -v /godata/pipelines/${GO_PIPELINE_NAME}/reports:/usr/src/app/reports --entrypoint python app/sample-code -m nose --with-xunit --xunit-file=reports/nosetests.xml

# run app
docker run --rm -i --entrypoint python app/sample-code entry.py
