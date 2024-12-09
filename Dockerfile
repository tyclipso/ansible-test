FROM python:3-slim
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

RUN pip install --no-cache-dir --upgrade "ansible-lint[community,yamllint]"==v24.9.2

