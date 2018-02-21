#!/usr/bin/env bash

# change to parent directory
cd ..

# convert nosetest xml from mini to expanded
xmllint --format reports/junit.min.xml > reports/junit.xml
