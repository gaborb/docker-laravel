FROM node:10.10.0-alpine as node

RUN addgroup user \
    && adduser -G user -s /bin/sh -D user;

WORKDIR /home/user

COPY laravel/package.json .
COPY laravel/webpack.mix.js .
COPY laravel/resources resources
COPY laravel/public public

RUN chown -R user:user *

USER user

RUN set -ex; \
    npm i; \
    npm run prod;
