FROM node:10.10.0-alpine

RUN addgroup developer \
    && adduser -G developer -s /bin/sh -D developer;

WORKDIR /home/developer

COPY laravel/package.json .
COPY laravel/webpack.mix.js .
COPY laravel/resources resources
COPY laravel/public public

RUN chown -R developer:developer *

USER developer

RUN set -ex; \
    npm i; \
    npm run prod;
