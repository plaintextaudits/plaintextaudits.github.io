#!/bin/sh

if [ -z "$1" ] ; then
  echo "no destination provided"
  exit 1
fi

hugo
rsync -av --delete public/ "$1:/var/www/plaintextaudits"
