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

RUN groupadd nvimgroup
RUN useradd --create-home --shell /bin/bash -g nvimgroup nvim 

WORKDIR /home/nvim/workdir/

ADD ./config /home/nvim/.config/nvim

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]

CMD echo -e "please run via -it (check repo for more details)"
