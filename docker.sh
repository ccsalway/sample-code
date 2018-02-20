#!/usr/bin/env bash

# build image
docker build . -t app/sample-code

# remove existing container
docker rm sample_code

# run image
docker run --name sample_code app/sample-code
