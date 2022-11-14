#!/bin/bash


git config --global core.quotepath false
git config --global log.date iso
git config --global alias.ll "log \
    --date-order \
    --date=iso \
    --graph \
    --full-history \
    --all \
    --pretty=format:'%x08%x09%C(red)%h %C(cyan)%ad%x08%x08%x08%x08%x08%x08 %C(bold blue)%aN%C(reset)%C(bold yellow)%d %C(reset)%s'"
