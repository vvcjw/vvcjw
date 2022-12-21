#!/bin/bash

APPEND_FILE_PATH=$HOME'/.profile'

source ./setup_base.sh

echo '' >> $APPEND_FILE_PATH
echo '# folder open alias' >> $APPEND_FILE_PATH
echo "command -v wslpath > /dev/null && alias open=explorer.exe" >> $APPEND_FILE_PATH
echo '' >> $APPEND_FILE_PATH
