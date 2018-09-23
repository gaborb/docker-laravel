FROM nginx:1.15.3-alpine

COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/

COPY --from=local-node:prod /home/developer/laravel/public /var/www/public
