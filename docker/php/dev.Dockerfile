FROM local-php:prod

RUN set -ex; \
    mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini;
