#!/bin/sh
VERSION=2.3.2

echo "Downloading glibc-$VERSION.tar.gz from http://ftp.gnu.org/gnu/glibc..."
if wget -q http://ftp.gnu.org/gnu/glibc/glibc-$VERSION.tar.gz; then
  echo "Extracting the \"charmaps\" directory..."
  if tar xfz glibc-$VERSION.tar.gz glibc-$VERSION/localedata/charmaps; then
    :
  else
    echo "!! Can\'t find the \"charmaps\" directory in the tar ball."
    exit 1
  fi
else
  echo "!! Downloading failed"
  exit 1
fi

rm -f glibc-$VERSION.tar.gz
./configure --with-charmaps=glibc-$VERSION/localedata/charmaps
echo "Ready to run make."
