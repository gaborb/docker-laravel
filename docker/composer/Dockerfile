FROM composer:1.7.2

RUN addgroup developer \
    && adduser -G developer -s /bin/sh -D developer;

WORKDIR /home/developer

COPY laravel .

RUN chown -R developer:developer *

USER developer

RUN set -ex; \
    composer install;
