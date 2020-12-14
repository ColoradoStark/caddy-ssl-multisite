FROM php:8.0.0-apache

COPY app /app

COPY docker/vhost.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /app && a2enmod rewrite

