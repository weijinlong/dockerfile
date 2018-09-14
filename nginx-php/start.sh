#!/bin/bash

php-fpm &
nginx -g 'daemon off;'

#tail -f /dev/null