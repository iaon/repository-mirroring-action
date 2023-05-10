#!/usr/bin/env sh
set -eu

git remote get-url "$1">/dev/null 2>&1 && git remote remove "$1"
if [ $? -eq 2 ] 
then
    echo "Nothing to cleanup"
fi

