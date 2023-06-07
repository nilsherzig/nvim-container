FROM archlinux
RUN pacman -Syyu --noconfirm

RUN pacman -S --noconfirm neovim
RUN pacman -S --noconfirm git
RUN pacman -S --noconfirm cargo
RUN pacman -S --noconfirm npm
RUN pacman -S --noconfirm python3
RUN pacman -S --noconfirm go
RUN pacman -S --noconfirm unzip
RUN pacman -S --noconfirm ripgrep

WORKDIR /workdir/
ADD ./config /root/.config/nvim

CMD echo -e "please run like this:\n'docker run -it -v ~/nvim_cache:/root/.local/share/nvim -v $PWD:/workdir nilsherzig/nvim_container nvim'"
