#!/usr/bin/env bash

# information only
echo "Coverage minimum pass rate set to ${COVER_MIN_PCT}%"
echo "Package Name set to ${PACKAGE_NAME}"

# ensure directory exists
mkdir -p reports

# set virtual environment, if exists
if [ -d "venv" ]; then
  source venv/bin/activate
fi

# run unit-tests and coverage
python -m nose \
    --cover-package=${PACKAGE_NAME} \
    --with-xunit --xunit-file=reports/junit.min.xml \
    --with-coverage --cover-branches --cover-inclusive --cover-tests \
    --cover-min-percentage=${COVER_MIN_PCT} \
    --cover-xml --cover-xml-file=reports/coverage.xml \
    --cover-html --cover-html-dir=reports/coverage
