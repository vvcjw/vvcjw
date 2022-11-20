#!/bin/bash


source ./setup_base.sh

echo '' >> ~/.profile
echo '# folder open alias' >> ~/.profile
echo "command -v wslpath > /dev/null && alias open=explorer.exe" >> ~/.profile
echo '' >> ~/.profile
