#!/usr/bin/env bash

# build image
docker build . -t app/sample-code

# run tests
docker run --rm -i --entrypoint nosetests app/sample-code --with-xunit

# run app
docker run --rm -i --entrypoint python app/sample-code entry.py
