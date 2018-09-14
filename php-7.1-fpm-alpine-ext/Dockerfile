FROM php:7.1-fpm-alpine3.8



RUN cp /etc/apk/repositories /etc/apk/repositories.bak \
	&& echo -e "http://mirrors.aliyun.com/alpine/v3.8/main/\nhttp://mirrors.aliyun.com/alpine/v3.8/community/" > /etc/apk/repositories \
	&& apk add --no-cache gcc libc-dev autoconf make \
	&& pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo_mysql opcache \
    && apk del gcc make libc-dev autoconf

EXPOSE 9000
CMD ["php-fpm"]