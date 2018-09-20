FROM php:7.2.10-fpm-alpine3.7 as php

WORKDIR /var/www

COPY laravel .
COPY --from=composer:local /home/user/vendor vendor
COPY --from=composer:local /home/user/bootstrap bootstrap
COPY --from=node:local /home/user/public public

RUN set -ex; \
    php -r "file_exists('.env') || copy('.env.example', '.env');"; \
    php artisan key:generate; \
    chown -R www-data:www-data storage; \
    chown -R www-data:www-data bootstrap/cache;
