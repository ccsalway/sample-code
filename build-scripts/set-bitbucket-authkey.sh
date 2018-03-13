#!/usr/bin/env bash

# exit on first non-zero exit code
set -e

# request access token from BitBucket (valid for 1hr)
RESP=$(curl -s -X POST https://bitbucket.org/site/oauth2/access_token \
    -d grant_type=client_credentials \
    -u ${BBKEY}:${BBSECRET})

# check existence of access_token
if [[ "${RESP}" != *"access_token"* ]]; then
    echo "Missing Access Token: ${RESP}"
    exit 1
fi

# extract token
TOKEN=$(echo ${RESP} | jq -r '.access_token')

# information only
echo "Setting auth token to ${TOKEN}"

# set TOKEN (GNU/BSD compatible method, as opposed to using -i '')
sed -e "s/\([Aa][Uu][Tt][Hh]\) = .*$/\1 = 'x-token-auth:${TOKEN}@'/" ../setup.py > setup.new
mv -- setup.new ../setup.py