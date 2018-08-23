#!/bin/bash

image=`docker images | grep emontech/emontech`
if [ -z "$image" ]; then
  echo 'No emontech image found, build it first:'
  docker build -t emontech/emontech -f Dockerfile .
else
  echo 'emontech image has been built:'
  echo $image
fi

docker run -d -p 8082:80 --name emontech -v $PWD/../www:/var/www/emontech emontech/emontech
