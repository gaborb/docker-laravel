FROM composer:1.7.2 as composer

RUN addgroup user \
    && adduser -G user -s /bin/sh -D user;

WORKDIR /home/user

COPY laravel .

RUN chown -R user:user *

USER user

RUN set -ex; \
    composer install;
