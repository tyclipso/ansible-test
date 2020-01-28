FROM python:3
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

RUN pip3 install --upgrade \
        ansible-lint==4.2.0
