#!/bin/bash
if [ -d /data/conf/nginx ]; then
  cp -f /data/conf/nginx/* /root/programs/nginx/conf/
fi
if [ -d /data/conf/php ]; then
  cp -f /data/conf/php/php.ini /root/programs/php/lib/php.ini
  cp -f /data/conf/php/php-fpm.conf /root/programs/php/etc/php-fpm.conf
  cp -f /data/conf/php/www.conf /root/programs/php/etc/php-fpm.d/www.conf
fi
php-fpm
nginx -g "daemon off;"
