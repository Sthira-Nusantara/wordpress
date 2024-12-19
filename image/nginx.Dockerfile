# Use the specified base image
FROM nginx:1.15.12-alpine

# Install envsubst, which is part of the gettext package
RUN apk add --no-cache gettext

# Copy the sample nginx configuration file into the container
COPY ./nginx.conf.sample /etc/nginx/conf.d/nginx.conf.sample

ARG NGINX_HTTPS

# Substitute environment variables in the nginx.conf file and start nginx
CMD ["/bin/sh", "-c", "envsubst '$NGINX_HTTPS' < /etc/nginx/conf.d/nginx.conf.sample > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]

# Expose the default nginx port
EXPOSE 80
