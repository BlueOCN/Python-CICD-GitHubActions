FROM python:3.8.3-slim-buster

COPY . /src

ARG GIT_HASH
ENV GIT_HASH=${GIT_HASH:-dev}

RUN pip install -r /src/requirements.txt