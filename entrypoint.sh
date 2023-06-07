#!/bin/sh

usermod -u $UID nvim > /dev/null
groupmod -g 100 nvimgroup

chown -R nvim:$GUI /home/nvim/.local

exec runuser -u nvim "$@"
