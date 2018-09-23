FROM node:10.10.0-alpine

RUN addgroup developer \
    && adduser -G developer -s /bin/sh -D developer;

WORKDIR /home/developer

COPY laravel laravel

# RUN chown -R developer:developer *

WORKDIR /home/developer/laravel

# USER developer

RUN set -ex; \
    npm install; \
    npm run production;
