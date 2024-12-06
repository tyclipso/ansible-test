FROM python:3-slim
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

RUN pip install --no-cache-dir --upgrade "ansible-lint[community,yamllint]"==v6.14.2

