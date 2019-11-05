FROM ubuntu:bionic
MAINTAINER Christoph Kepler <christoph.kepler@tyclipso.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt update

RUN apt install -y \
				python3-dev \
				python3-pip \
				git

RUN pip3 install --upgrade \
				ansible \
				ansible-lint
