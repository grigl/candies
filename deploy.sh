#!/bin/sh

HOST=ftp.thecandies.ru
LOGIN=thecand8
PASSWORD=$1

ncftpput -u $LOGIN -p $PASSWORD -d deploy-ftp.log -R -S .tmp -v $HOST /www/published/SC/html/scripts/core_functions ./site_root/published/SC/html/scripts/core_functions/registration_functions.php
ncftpput -u $LOGIN -p $PASSWORD -d deploy-ftp.log -R -S .tmp -v $HOST /www/published/SC/html/scripts/modules/news ./site_root/published/SC/html/scripts/modules/news/class.newsmodule.php

