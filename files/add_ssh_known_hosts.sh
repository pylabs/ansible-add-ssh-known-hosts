#!/bin/bash


if [ ! -e ~/.ssh ]; then
    mkdir -m 0700 ~/.ssh
fi

if [ ! -e ~/.ssh/known_hosts ]; then
    touch ~/.ssh/known_hosts
    chmod 0600 ~/.ssh/known_hosts
fi

for i in $@; do
    if ! grep $i ~/.ssh/known_hosts > /dev/null; then
        ssh-keyscan $i >> ~/.ssh/known_hosts
    fi
done
