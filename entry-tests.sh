#!/bin/sh

# information only
echo "Coverage minimum pass rate: ${COVER_MIN_PCT}%"

# create directory
mkdir -p reports

# run tests
python -m nose tests/*.py \
    --with-xunit --xunit-file=reports/junit.min.xml \
    --with-coverage --cover-branches --cover-inclusive --cover-tests \
    --cover-min-percentage=${COVER_MIN_PCT} \
    --cover-xml --cover-xml-file=reports/coverage.xml \
    --cover-html --cover-html-dir=reports/coverage

# store exit code so xmllint can be run
ec=$?

# convert junit from mini to expanded for GOCD compatibility
xmllint --format reports/junit.min.xml > reports/junit.xml

exit ${ec}