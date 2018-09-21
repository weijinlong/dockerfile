FROM alpine:3.8

MAINTAINER Chuanjian Wang <chuanjian@funxdata.com>

ENV TZ=Asia/Shanghai
ENV LD_PRELOAD=/usr/lib/preloadable_libiconv.so
RUN apk add --update --no-cache \
	bash \
	php7 \
	php7-common \
	php7-ctype \
	php7-curl \
	php7-fpm \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-mcrypt \
	php7-mysqli \
	php7-oauth \
	php7-opcache \
	php7-openssl \
	php7-pdo \
	php7-pdo_dblib \
	php7-pdo_mysql \
	php7-pdo_pgsql \
	php7-redis \
	php7-simplexml \
	php7-tokenizer \
	php7-xml \
	php7-xmlreader \
	php7-xmlrpc \
	php7-xmlwriter \
	php7-xsl \
	php7-zip \
	composer


RUN apk add --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
	gnu-libiconv \
	php7-protobuf \
	php7-uuid


ADD etc/fpm-www.conf /etc/php7/php-fpm.d/www.conf
ADD etc/php-fpm.conf /etc/php7/php-fpm.conf 

EXPOSE 9000
CMD ["php-fpm7","--nodaemonize"]
