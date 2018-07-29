FROM php:5.6-apache

RUN apt-get update && \
  docker-php-ext-install pdo_mysql mysqli mbstring && \
  a2enmod rewrite

COPY ./base.conf /etc/apache2/sites-available/
COPY ./000-default.conf /etc/apache2/sites-available/
COPY ./ssl.conf /etc/apache2/sites-available/
COPY ./php.ini /usr/local/etc/php/

# 証明書作成
ADD generate-ssl-keys.sh /opt/generate-ssl-keys.sh
RUN chmod a+x /opt/generate-ssl-keys.sh
RUN /bin/bash -c "source /opt/generate-ssl-keys.sh /etc/apache2/ssl_keys localhost"

RUN a2enmod ssl
RUN a2ensite ssl
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]