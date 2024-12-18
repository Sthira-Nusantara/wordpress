#!/bin/sh

# Substitute environment variables in the nginx.conf file
envsubst '$NGINX_HTTPS' < /etc/nginx/conf.d/nginx.conf.sample > /etc/nginx/conf.d/nginx.conf

nginx -g 'daemon off;'