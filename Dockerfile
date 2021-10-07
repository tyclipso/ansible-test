FROM python:3.9-slim
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

RUN pip install --no-cache-dir --upgrade "ansible-lint[community,yamllint]"==5.1.2
