FROM python:2.7-alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN apk update && apk add libxml2-utils

RUN pip install -U setuptools

RUN python setup.py install --user

ENTRYPOINT["python", "entry.py"]