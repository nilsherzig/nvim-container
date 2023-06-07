docker run -it --env UID=$UID --env GUI=$GID -v ~/nvim_cache:/home/nvim/.local/share/nvim -v $PWD:/home/nvim/workdir nilsherzig/nvim-container nvim
