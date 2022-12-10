#!/bin/bash

HOME_PATH=`realpath ~`

echo '' >> ~/.profile
echo '# vvcjw environment variable' >> ~/.profile
echo 'export VVCJW_PATH="$HOME_PATH/.vvcjw"' >> ~/.profile
echo 'export PATH="$VVCJW_PATH/bin:$PATH"' >> ~/.profile
echo '' >> ~/.profile
echo 'alias vvcjw="cd $VVCJW_PATH && source $VVCJW_PATH/venv/bin/activate"' >> ~/.profile
echo '' >> ~/.profile
echo 'source $VVCJW_PATH/prompt_git.sh' >> ~/.profile
echo '' >> ~/.profile


# cd $VVCJW_PATH
# python3 -m venv vvcjw > /dev/null &&
# vvcjw

