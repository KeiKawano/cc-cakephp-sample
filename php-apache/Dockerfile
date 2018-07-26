FROM php:5.6-apache

RUN apt-get update && \
  docker-php-ext-install pdo_mysql mysqli mbstring && \
  a2enmod rewrite

COPY ./base.conf /etc/apache2/sites-available/
COPY ./000-default.conf /etc/apache2/sites-available/
COPY ./php.ini /usr/local/etc/php/