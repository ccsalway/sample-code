#!/bin/sh

# exit on first non-zero exit code
set -ex

# create directory
mkdir -p reports

# run tests
python -m nose tests/*.py \
    --with-xunit --xunit-file=reports/junit.min.xml \
    --with-coverage --cover-branches --cover-inclusive --cover-tests \
    --cover-xml --cover-xml-file=reports/coverage.xml \
    --cover-html --cover-html-dir=reports/coverage

# convert nosetest xml from mini to expanded
xmllint --format reports/junit.min.xml > reports/junit.xml
