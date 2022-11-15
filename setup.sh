#!/bin/bash


VVCJW_PATH=/home/$USER/.vvcjw
VVCJW_VENV_PATH=$VVCJW_PATH/venv

alias vvcjw=source $VVCJW_VENV_PATH/bin/activate | cd $VVCJW_PATH


cd $VVCJW_PATH
python3 -m venv vvcjw
vvcjw



cd -
