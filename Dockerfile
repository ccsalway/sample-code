FROM python:2.7-alpine

RUN apk update && apk add --no-cache gcc git libxml2-utils musl-dev postgresql-dev

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install -U setuptools

RUN python setup.py install --user

ENTRYPOINT ["python", "entry.py"]
