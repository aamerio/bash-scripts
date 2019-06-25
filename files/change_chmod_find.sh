#!/bin/bash

chown -R www-data:www-data /var/www/*
chmod -R 774 /var/www/*


find /var/www/ -name ".htaccess" | xargs chown www-data:www-data
find /var/www/ -name ".htaccess" | xargs chmod 774
