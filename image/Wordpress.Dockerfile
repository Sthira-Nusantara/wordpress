FROM wordpress:6.7.1-fpm-alpine

WORKDIR /var/www/html

# Install the PHP extensions we need
RUN docker-php-ext-install ftp

# Copy the custom uploads.ini file to the conf.d directory
COPY ./uploads.ini /usr/local/etc/php/conf.d/







