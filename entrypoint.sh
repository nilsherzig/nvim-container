#!/bin/sh

usermod -u $UID nvim
groupmod -g 100 nvimgroup

chown -R nvim:$GUI /home/nvim/.local
# exec "$@"

exec runuser -u nvim "$@"
