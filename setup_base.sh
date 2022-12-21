#!/bin/bash

APPEND_FILE_PATH=$HOME'/.profile'

echo '' >> $APPEND_FILE_PATH
echo '# vvcjw environment variable' >> $APPEND_FILE_PATH
echo 'export VVCJW_PATH="$HOME/.vvcjw"' >> $APPEND_FILE_PATH
echo 'export PATH="$VVCJW_PATH/bin:$PATH"' >> $APPEND_FILE_PATH
echo '' >> $APPEND_FILE_PATH
echo 'alias vvcjw="cd $VVCJW_PATH && source $VVCJW_PATH/venv/bin/activate"' >> $APPEND_FILE_PATH
echo '' >> $APPEND_FILE_PATH
echo 'source $VVCJW_PATH/prompt_git.sh' >> $APPEND_FILE_PATH
echo '' >> $APPEND_FILE_PATH


# cd $VVCJW_PATH
# python3 -m venv vvcjw > /dev/null &&
# vvcjw

