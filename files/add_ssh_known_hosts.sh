#!/bin/bash


if [ "$2" == "root" -o "$2" == "" ]; then
    home_dir="/root"
else
    home_dir="/home/$i"
fi

if [ ! -e $home_dir/.ssh ]; then
    mkdir -m 0700 $home_dir/.ssh
fi

if [ ! -e $home_dir/.ssh/known_hosts ]; then
    touch $home_dir/.ssh/known_hosts
    chmod 0600 $home_dir/.ssh/known_hosts
fi

if ! grep $1 $home_dir/.ssh/known_hosts > /dev/null; then
    ssh-keyscan $1 >> $home_dir/.ssh/known_hosts
fi
