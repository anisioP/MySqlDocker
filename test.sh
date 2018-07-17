#!/bin/sh
set -e

actual=`docker exec -it mysql mysql -uroot -ppassword -e 'show databases;'`
echo "Server says: $actual"
if [ "$actual" == *_${dbname}_* ]; then
  echo "Test failed"
  exit 1
else
  echo "Test passed"
  exit 0
fi