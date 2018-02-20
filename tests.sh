#!/usr/bin/env bash

mkdir -p reports

python -m nose tests/*.py --with-xunit --xunit-file=reports/nosetests.xml --with-coverage --cover-branches --cover-inclusive --cover-tests --cover-xml --cover-xml-file=reports/coverage.xml
