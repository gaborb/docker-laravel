# node
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

# composer
FROM composer:1.7.2 as composer

RUN addgroup user \
    && adduser -G user -s /bin/sh -D user;

WORKDIR /home/user

COPY laravel .

RUN chown -R user:user *

USER user

RUN set -ex; \
    composer install;

# php
FROM php:7.2.10-fpm-alpine3.7 as php

WORKDIR /var/www

COPY laravel .
COPY --from=composer /home/user/vendor vendor
COPY --from=composer /home/user/bootstrap bootstrap
COPY --from=node /home/user/public public

RUN set -ex; \
    php -r "file_exists('.env') || copy('.env.example', '.env');"; \
    php artisan key:generate; \
    chown -R www-data:www-data storage; \
    chown -R www-data:www-data bootstrap/cache;
