FROM php:7.1-cli-alpine3.8



RUN cp /etc/apk/repositories /etc/apk/repositories.bak \
	&& echo -e "http://mirrors.aliyun.com/alpine/v3.8/main/\nhttp://mirrors.aliyun.com/alpine/v3.8/community/" > /etc/apk/repositories \
	&& apk add --no-cache gcc libc-dev autoconf make zlib zlib-dev zlib zlib-dev libjpeg libpng libpng-dev freetype g++ \
	&& pecl install redis xdebug grpc protobuf \
    && docker-php-ext-enable redis xdebug grpc protobuf \
    && docker-php-ext-install pdo_mysql opcache tokenizer gd zip \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && wget https://phar.phpunit.de/phpunit-old.phar \
    && chmod +x phpunit-old.phar \
    && mv phpunit-old.phar /usr/bin/phpunit \
    && apk del gcc autoconf make  g++
  

ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]