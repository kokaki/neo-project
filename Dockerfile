#
# docker build -t neo-project .
# docker run -p 80:80 neo-project
#
FROM php:7.2.3-apache

RUN apt update &&\
    a2enmod rewrite &&\
    docker-php-ext-install pdo_mysql &&\
    echo 'date.timezone = Asia/Tokyo' >> /usr/local/etc/php/conf.d/99_myconf.ini

COPY . /var/www/html/
COPY .docker/config/apache/neo_vhost.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 80

CMD ["apache2-foreground"]
