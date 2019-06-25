# BASE IMAGE : Ubuntu LTS 16.04
FROM ubuntu:18.04

## Who's this
LABEL "Name"="Apache2.4+Php7+modules"


## Initial update/upgrade
RUN apt-get clean
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y tzdata
RUN apt-get install --fix-missing
## Install of Apache & Modules 
RUN apt-get install -y -qq apt-utils
RUN apt-get install -y -qq libapache2-mod-security2 libapache2-mod-php7.2 libapache2-mod-xsendfile
RUN apt-get install -y -qq php7.2 php7.2-mysql php7.2-curl php7.2-gd
RUN apt-get install -y -qq php7.2-xml php7.2-mbstring php7.2-zip php7.2-soap

# php7.2-mcrypt does not exist anymore (but you can hack it in https://www.techrepublic.com/article/how-to-install-mcrypt-for-php-7-2)

## Install certification manager
RUN apt-get install -y software-properties-common
RUN add-apt-repository universe
RUN add-apt-repository ppa:certbot/certbot
RUN apt-get update
RUN apt-get install -y certbot python-certbot-apache 

RUN apt-get install -y -qq curl
RUN apt-get install -y -qq at

RUN apt-get install -y -qq zip unzip
RUN apt-get install -y -qq git

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

## Enabling Apache & Modules
RUN a2enmod rewrite
RUN a2enmod authz_groupfile
RUN a2enmod cgi
RUN a2enmod headers
RUN a2enmod heartbeat
RUN a2enmod reqtimeout
RUN a2enmod socache_shmcb
RUN a2enmod xml2enc
RUN a2enmod xsendfile
RUN a2enmod deflate
RUN a2enmod filter
RUN a2enmod headers
RUN a2enmod heartbeat
RUN a2enmod mime
RUN a2enmod php7.2
RUN a2enmod rewrite
RUN a2enmod security2
RUN a2enmod status
RUN a2enmod remoteip
RUN a2enmod ssl

COPY php.ini /etc/php/7.2/apache2/.


RUN service apache2 restart

## Start Apache ae main process
CMD apachectl -D FOREGROUND

## NETWORK
EXPOSE 80 443
