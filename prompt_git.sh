#!/bin/bash

OLD_PS1=$PS1

function git_remote_name_url()
{
    echo -n `git remote -v | grep origin 2> /dev/null` | cut -d " " -f 2 | rev | cut -d "/" -f 1-2 | cut -d "." -f 2- | rev
}
function git_remote_name()
{
    git_remote_name_url | rev | cut -d "/" -f -2 | rev
}

function git_branch_name()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*//' -e 's/^ *//'
}

function git_remote_branch()
{
    if [ `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*//' -e 's/^ 8//'` ]; then
        echo -n "($(git_remote_name):$(git_branch_name)) "
    fi
}

function ps1reset()
{
    export PS1=$OLD_PS1
}

export PS1="\$(git_remote_branch)$PS1"
