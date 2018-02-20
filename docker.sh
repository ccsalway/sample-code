#!/usr/bin/env bash

# build image
docker build . -t app/sample-code

# run tests
docker run -i -v ${PWD}:/usr/src/app --entrypoint python app/sample-code -m nose --with-xunit

# run app
docker run --rm -i --entrypoint python app/sample-code entry.py
