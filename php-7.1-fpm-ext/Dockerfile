FROM php:7.1-fpm

RUN pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo_mysql opcache 
    

EXPOSE 9000
CMD ["php-fpm"]