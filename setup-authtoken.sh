#!/usr/bin/env bash

# IMPORTANT: This file should be listed in .dockerignore
echo "Current Working Directory: ${PWD}"

# request access token (valid for 1hr)
RESP=$(curl -s -X POST https://bitbucket.org/site/oauth2/access_token \
    -d grant_type=client_credentials \
    -u ${BBKEY}:${BBSECRET})

# extract token
TOKEN=$(python -c "import sys, json; print json.loads(sys.argv[1])['access_token']" "${RESP}")

# replace TOKEN in setup.py
sed -i "" "s|AUTH_TOKEN|${TOKEN}|" ./setup.py
