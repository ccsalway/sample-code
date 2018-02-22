#!/usr/bin/env bash

set -x

# run pylint and output results to a report file
python -m pylint --msg-template="{path}[{line},{column}]: {msg} ({msg_id}:{symbol})" $(find app -name "*.py") > reports/pylint.txt

# we only want to alert on errors and fatal
ec=$?
if (( ${ec} & 3 )); then
    exit ${ec}
else
    exit 0
fi
