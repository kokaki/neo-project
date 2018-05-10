FROM php:7.2.3-apache

RUN apt update &&\
    docker-php-ext-install pdo_mysql &&\
    echo 'date.timezone = Asia/Tokyo' >> /usr/local/etc/php/conf.d/99_myconf.ini

CMD ["apache2-foreground"]
