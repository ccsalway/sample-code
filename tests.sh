#!/bin/sh

# exit on first non-zero exit code
set -ex -o pipefail


mkdir -p reports

python -m nose tests/*.py \
    --with-xunit --xunit-file=reports/junit.min.xml \
    --with-coverage --cover-branches --cover-inclusive --cover-tests \
    --cover-xml --cover-xml-file=reports/coverage.xml \
    --cover-html --cover-html-dir=reports/coverage

xmllint --format reports/junit.min.xml > reports/junit.xml
