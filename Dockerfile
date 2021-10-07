FROM python:3-slim AS wheel

RUN apt-get update && \
		apt-get install -y --no-install-recommends \
			libffi-dev=* \
			build-essential=* && \
		rm -rf /var/lib/apt/lists/* && \
		pip install --no-cache-dir --upgrade "ansible-lint[community,yamllint]"==5.0.8

FROM python:3-slim
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

COPY --from=wheel /usr/local/lib /usr/local/lib
COPY --from=wheel /usr/local/bin /usr/local/bin
