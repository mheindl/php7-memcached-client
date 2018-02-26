FROM php:7.2-fpm

MAINTAINER Matthias Heindl <heindlmatthias@gmail.com>

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y \
    libmemcached-dev \
    zlib1g-dev \
    libssl-dev

RUN pecl install memcached-3.0.3 && docker-php-ext-enable memcached

WORKDIR /var/www/
