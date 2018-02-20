#!/usr/bin/env sh

virtualenv venv

source venv/bin/activate

python setup.py install --user
