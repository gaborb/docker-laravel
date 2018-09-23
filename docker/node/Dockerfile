FROM node:10.10.0-alpine

RUN addgroup developer \
    && adduser -G developer -s /bin/sh -D developer;

WORKDIR /home/developer

COPY laravel .

# RUN chown -R developer:developer *

# USER developer

RUN set -ex; \
    npm install; \
    npm run production;
