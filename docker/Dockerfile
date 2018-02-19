FROM python:2.7-alpine

WORKDIR /usr/src/app

COPY ../ /usr/src/app

RUN pip install -U setuptools pylint

RUN python setup.py install --user

ENTRYPOINT ["python", "-u", "entry.py"]
