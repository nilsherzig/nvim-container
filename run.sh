docker run -it \
    --env UID=$UID \
    --env GUI=$GID \
    -v ~/nvim_cache:/home/nvim/.local/share/nvim \
    -v $PWD:/home/nvim/workdir \
    -v $HOME/.gitconfig:/home/nvim/.gitconfig \
    -v $HOME/.ssh/id_rsa:/home/nvim/.ssh/id_rsa \
    -v $HOME/.ssh/known_hosts:/home/nvim/.ssh/known_hosts \
    nilsherzig/nvim-container "$@"
