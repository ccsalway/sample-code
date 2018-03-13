#!/usr/bin/env bash

# ensure directory exists
mkdir -p reports

# set virtual environment, if exists
if [ -d "venv" ]; then
  source venv/bin/activate
fi

# run pylint and output results to a report file
python -m pylint $(find -name "*.py") > reports/pylint.txt

# we only want to alert on errors and fatal
ec=$?; (( 3 & ${ec} )) && exit ${ec} || exit 0
