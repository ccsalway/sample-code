#!/usr/bin/env bash

# IMPORTANT: This file should be listed in .dockerignore

# debugging use only
echo "Current Working Directory: ${PWD}"
ls -l

###### BITBUCKET AUTH TOKEN

# request access token from BitBucket (valid for 1hr)
RESP=$(curl -s -X POST https://bitbucket.org/site/oauth2/access_token \
    -d grant_type=client_credentials \
    -u ${BBKEY}:${BBSECRET})

# extract token
TOKEN=$(python -c "import sys, json; print json.loads(sys.argv[1])['access_token']" "${RESP}")

# replace TOKEN in setup.py
sed -i "s|auth = ''|auth = 'x-token-auth:${TOKEN}@'|" ./setup.py


########## BUILD

# build docker
docker build . -t ${DOCKER_TAG}
