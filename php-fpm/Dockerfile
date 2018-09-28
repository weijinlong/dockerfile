FROM alpine:3.8

MAINTAINER Chuanjian Wang <chuanjian@funxdata.com>

ENV TZ=Asia/Shanghai
ENV LD_PRELOAD=/usr/lib/preloadable_libiconv.so
RUN echo -e "http://mirrors.aliyun.com/alpine/v3.8/main/\nhttp://mirrors.aliyun.com/alpine/v3.8/community/" > /etc/apk/repositories \
	&& apk add --update --no-cache \
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
			php7-redis \
			php7-simplexml \
			php7-tokenizer \
			php7-xml \
			php7-xmlreader \
			php7-xmlrpc \
			php7-xmlwriter \
			php7-xsl \
			php7-zip \
			php7-pear \
			php7-dev \
			php7-fileinfo \
			php7-gd \
			composer \
			make \
			gcc \
			g++ \
			zlib-dev \
	&& pecl install grpc protobuf \
	&& echo "extension=grpc.so" > /etc/php7/conf.d/grpc.ini \
	&& echo "extension=protobuf.so" > /etc/php7/conf.d/protobuf.ini \
	&& apk del gcc g++ make php7-dev php7-pear



ADD etc/fpm-www.conf /etc/php7/php-fpm.d/www.conf
ADD etc/php-fpm.conf /etc/php7/php-fpm.conf 

EXPOSE 9000
CMD ["php-fpm7","--nodaemonize"]
