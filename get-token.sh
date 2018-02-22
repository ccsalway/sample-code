#!/usr/bin/env bash

# oAuth consumer key/secret from bitbucket
KEY=TfyvH53ZDydEAwEJBu
SECRET=Hpqn5jWE3Nr7X4NuzX7jQkFLhGVBLz8Q

# request access token (valid for 1hr)
RESP=$(curl -s -X POST https://bitbucket.org/site/oauth2/access_token \
    -d grant_type=client_credentials \
    -u ${KEY}:${SECRET})

# extract token
TOKEN=$(python -c "import sys, json; print json.loads(sys.argv[1])['access_token']" "${RESP}")

# clone repo using access token
#git clone https://x-token-auth:${TOKEN}@bitbucket.org/salway/sample-code.git _temp1
