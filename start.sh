#!/bin/ash
rm -rf /home/container/tmp/*

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm82 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/