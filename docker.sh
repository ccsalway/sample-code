#!/usr/bin/env bash

# build image
docker build . -t app/sample-code

# run tests
docker run --rm -v /tmp/reports:/usr/src/app/reports --entrypoint python app/sample-code -m nose --with-xunit --xunit-file=reports/nosetests.xml

# run app
docker run --rm -i --entrypoint python app/sample-code entry.py
