FROM php:7.2-apache

RUN apt-get update && apt-get install -y \
&& docker-php-ext-install mysqli pdo pdo-mysql

RUN a2emond rewrite

RUN chmod 777 -R -c /var/www 