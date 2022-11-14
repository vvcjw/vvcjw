#!/bin/bash

curl -O -L  https://sourceforge.net/projects/sshpass/files/sshpass/1.06/sshpass-1.06.tar.gz && tar xvzf sshpass-1.06.tar.gz
cd sshpass-1.06/
./configure
sudo make install
cd -
