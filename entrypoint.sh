#!/bin/sh

usermod -u $UID nvim > /dev/null
groupmod -g 100 nvimgroup

chown -R nvim:$GUI /home/nvim/.local
chown -R nvim:$GUI /home/nvim/.config

runuser -l nvim -c 'find /home/nvim/.config/nvim -maxdepth 0 -empty -type d -exec git clone https://github.com/nilsherzig/nvim-config.git /home/nvim/.config/nvim/ \;'

exec runuser -u nvim "$@"
