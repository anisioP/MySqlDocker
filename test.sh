#!/bin/sh
set -e

actual=`docker exec -it mysql mysql -uroot -ppassword -e 'show databases;'`
echo "Server says: $actual"
