FROM debian:jessie
MAINTAINER Arthur Axel fREW Schmidt <frioux@gmail.com>

RUN apt-get update \
 && apt-get install -y libpq-dev python-dev python-pip \
 && pip install pgcli

ENTRYPOINT ["pgcli"]
