#!/bin/bash

VERSION=1.09

curl -O -L  https://sourceforge.net/projects/sshpass/files/sshpass/$VERSION/sshpass-$VERSION.tar.gz && tar xvzf sshpass-$VERSION.tar.gz
cd sshpass-$VERSION/
./configure
sudo make install

cd -
rm sshpass-$VERSION.tar.gz
