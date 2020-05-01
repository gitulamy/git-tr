#!/bin/bash

if test -z "$prefix"; then
    PS3="Choose install location: "
    select prefix in $(echo $PATH | 
        tr ':' '\000' | 
        xargs -0 -n 1 echo | 
        while read a; do
            if test ! -h $a; then
               echo $a
            fi
        done )
    do
        if test -n "$prefix"; then
            break
        fi
    done
fi

mkdir -p "$prefix" 2>/dev/null || sudo mkdir -p "$prefix" 2>/dev/null

cp -p git-tr $prefix/git-tr || sudo cp -p git-tr $prefix/git-tr || exit

echo "Installed: $prefix/git-tr"
