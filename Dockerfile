FROM python:3.9.13

COPY . /src

ARG GIT_HASH
ENV GIT_HASH=${GIT_HASH:-dev}

RUN pip install -r /src/requirements.txt