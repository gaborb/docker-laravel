FROM php:7.2.10-fpm-alpine3.7

WORKDIR /var/www

COPY laravel .
COPY --from=local-composer:prod /home/developer/laravel/vendor vendor
COPY --from=local-composer:prod /home/developer/laravel/bootstrap bootstrap
COPY --from=local-node:prod /home/developer/laravel/public public

RUN set -ex; \
    chown -R www-data:www-data storage; \
    chown -R www-data:www-data bootstrap/cache; \
    mv $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini;
