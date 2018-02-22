#!/usr/bin/env bash

set -x

# create directory
mkdir -p reports

# run pylint and output results to a report file
python -m pylint --msg-template="{path}[{line},{column}]: {msg} ({msg_id}:{symbol})" $(find app -name "*.py") > reports/pylint.txt

# we only want to alert on errors and fatal
ec=$?
(( 3 & ${ec} )) && exit ${ec} || exit 0
