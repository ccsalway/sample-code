#!/usr/bin/env bash

# exit on first non-zero exit code
set -ex

# change to parent directory
cd ..

# create directory
mkdir -p reports

# run tests
python -m nose tests/*.py \
    --with-xunit --xunit-file=reports/junit.min.xml \
    --with-coverage --cover-branches --cover-inclusive --cover-tests \
    --cover-xml --cover-xml-file=reports/coverage.xml \
    --cover-html --cover-html-dir=reports/coverage
