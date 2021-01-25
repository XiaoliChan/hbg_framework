#!/bin/bash

sshpass -p $2 scp -o GlobalKnownHostsFile=/dev/null -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no secure/libsnoopy.so root@$1:/usr/local/lib/libsnoopy.so
sshpass -p $2 ssh -o GlobalKnownHostsFile=/dev/null -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$1 "echo '/usr/local/lib/libsnoopy.so' >> /etc/ld.so.preload; echo '[snoopy]' > /etc/snoopy.ini; service apache2 restart; service smbd restart"
