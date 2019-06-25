#!/bin/bash

docker run -d -ti \
	-v /var/www72/www:/var/www/html \
	-v /var/www72/log:/var/log/apache2 \
        -v /etc/letsencrypt:/etc/letsencrypt:ro \
	-v /var/www72/sites-enabled:/etc/apache2/sites-enabled:ro \
	-v /mnt/DATA/Docker/containers/oint_php72/php.ini:/etc/php/7.2/apache2/php.ini:ro \
	-p 82:80 \
	-p 445:443 \
	--name=php7.2 oint:php7.2

