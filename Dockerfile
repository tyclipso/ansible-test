FROM ubuntu:bionic
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
    && apt install -y \
        python3-dev \
        python3-pip \
        git \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade \
        ansible \
        ansible-lint
