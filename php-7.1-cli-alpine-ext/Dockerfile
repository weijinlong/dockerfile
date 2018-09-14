FROM php:7.1-cli-alpine3.8



RUN cp /etc/apk/repositories /etc/apk/repositories.bak \
	&& echo -e "http://mirrors.aliyun.com/alpine/v3.8/main/\nhttp://mirrors.aliyun.com/alpine/v3.8/community/" > /etc/apk/repositories \
	&& apk add --no-cache gcc libc-dev autoconf make \
	&& pecl install redis \
	&& pecl install xdebug \
    && docker-php-ext-enable redis xdebug \
    && docker-php-ext-install pdo_mysql opcache tokenizer \
    && apk del gcc make libc-dev autoconf

ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]