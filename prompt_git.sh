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

function git_status_count()
{
    local git_file_info=`git status -s` 
    local staged_deleted_count=`grep -o "D  " <<< $git_file_info | wc -l`
    local unstaged_deleted_count=`grep -o " D " <<< $git_file_info | wc -l`
    local staged_modified_count=`grep -o "M  " <<< $git_file_info | wc -l`
    local unstaged_modified_count=`grep -o " M " <<< $git_file_info | wc -l`
    local staged_addtacked_count=`grep -o "A  " <<< $git_file_info | wc -l`
    local unstaged_untacked_count=`grep -o "?? " <<< $git_file_info | wc -l`

    echo -n S # staged 
    echo -n A$staged_addtacked_count
    echo -n M$staged_modified_count
    echo -n D$staged_deleted_count

    echo -n U # unstaged 
    echo -n M$unstaged_modified_count
    echo -n D$unstaged_deleted_count
    echo -e ?$unstaged_untacked_count
}

function git_remote_branch()
{
    local _color_remote='\033[1;33m'
    local _color_colon='\033[6;0m'
    local _color_branch='\033[1;33m'
    local _color_last='\033[0m'

    if [ `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*//' -e 's/^ 8//'` ]; then
        echo -e "(${_color_remote}$(git_remote_name)${_color_colon}:${_color_branch}$(git_branch_name)${_color_last}) "
    fi
}

function ps1reset()
{
    export PS1=$OLD_PS1
}

export PS1="\$(git_remote_branch)\n$PS1"
