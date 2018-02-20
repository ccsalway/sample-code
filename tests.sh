#!/usr/bin/env bash

mkdir -p reports

python -m nose tests/*.py --with-xunit --with-coverage --cover-branches --cover-inclusive --cover-tests --xunit-file=reports/nosetests.xml

python -m coverage xml

mv coverage.xml reports/coverage.xml