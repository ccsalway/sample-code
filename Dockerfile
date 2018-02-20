FROM python:2.7-alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install -U setuptools gcc libxml2-utils

RUN python setup.py install --user
