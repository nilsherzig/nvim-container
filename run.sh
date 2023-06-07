docker run -it \
    --env UID=$UID \
    --env GUI=$GID \
    -v $HOME/.nvim-container/cache:/home/nvim/.local/share/nvim \
    -v $HOME/.nvim-container/config:/home/nvim/.config/nvim \
    -v $PWD:/home/nvim/workdir \
    -v $HOME/.gitconfig:/home/nvim/.gitconfig \
    -v $HOME/.ssh/id_rsa:/home/nvim/.ssh/id_rsa \
    -v $HOME/.ssh/known_hosts:/home/nvim/.ssh/known_hosts \
    nilsherzig/nvim-container "$@"
