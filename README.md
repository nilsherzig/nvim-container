## run

run using the following command:

```bash 
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
```

I would recommend to alias this large command to `nvim`.

## autoupdates

Will pull current config in background on startup. 
Default is nilsherzig/nvim-config, but you can change the url using env vars:

```
--env CONFIGS=https://github.com/nilsherzig/nvim-config
```

## installs

- neovim 
- git

## lsp support out of the box

- java 
- rust 
- go
- bash 
- python

## dap support out of the box

- go
