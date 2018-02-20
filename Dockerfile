FROM python:2.7-alpine

WORKDIR /usr/src/app

RUN pip install -U setuptools

RUN python setup.py install --user
