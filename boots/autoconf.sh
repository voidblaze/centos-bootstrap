#! /usr/bin/env bash

set -ex

VERSION=2.69

cd /usr/src
sudo wget http://ftp.gnu.org/gnu/autoconf/autoconf-${VERSION}.tar.gz
sudo tar -xzvf autoconf-${VERSION}.tar.gz
cd autoconf-${VERSION}
sudo ./configure --prefix=/usr
sudo make
sudo make install
sudo make installcheck
/usr/bin/autoconf --version
