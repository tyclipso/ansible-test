FROM python:3-alpine
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

SHELL [ "/bin/ash" , "-euxo", "pipefail", "-c"]

# hadolint ignore=DL3018,SC2086
RUN apk add --no-cache --virtual .build-deps \
      gcc=9.3.0-r2 \
      make=4.3-r0 \
      libffi-dev=3.3-r2 \
      musl-dev=1.1.24-r1 \
      openssl-dev=1.1.1d-r3 && \
		pip install --upgrade \
      ansible-lint==4.3.0 && \
    runDeps="$( \
      scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib \
      | tr ',' '\n' \
      | sort -u \
      | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' \
      )" && \
    apk add --no-cache --virtual .run-deps $runDeps && \ 
    apk del .build-deps
