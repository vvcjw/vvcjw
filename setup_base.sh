#!/bin/bash



echo 'export VVCJW_PATH="/home/$USER/.vvcjw"' >> ~/.profile
echo 'export PATH="$VVCJW_PATH/bin:$PATH"' >> ~/.profile
echo 'alias vvcjw="cd ${VVCJW_PATH}"' >> ~/.profile


# alias vvcjw=source $VVCJW_PATH/vvcjw/bin/activate | cd $VVCJW_PATH

# cd $VVCJW_PATH
# python3 -m venv vvcjw > /dev/null &&
# vvcjw


