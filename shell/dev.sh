#!/bin/sh
docker run --name proxy -p 80:80 --net mynet -v /var/run/docker.sock:/tmp/docker.sock --rm -d -t jwilder/nginx-proxy:alpine
docker run -it -d --rm --net mynet  --name web1 -v D:\dev\CodeIgniter-4.0.0-alpha.1:/var/www/html  -e VIRTUAL_HOST=who.me registry.cn-hangzhou.aliyuncs.com/fire_chasers/php-fpm:0.1-nginx