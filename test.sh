#!/bin/sh
set -e

actual=`docker exec -it mysql mysql -uroot -ppassword -e 'show databases;'`
actual2=`docker ps -a`
echo "Server says: $actual"
echo "Server says: $actual2"

if [ "$actual2" == *_${Up}_* ]; then
  echo "Test failed"
  exit 1
else
  echo "Test passed"
  exit 0
fi