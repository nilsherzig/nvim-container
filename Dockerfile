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
RUN pacman -S --noconfirm openssh
# RUN pacman -S --noconfirm wl-clipboard 

RUN groupadd nvimgroup
RUN useradd --create-home --shell /bin/bash -g nvimgroup nvim 

USER nvim

RUN mkdir -p /home/nvim/.config/
RUN chown -R nvim:nvimgroup /home/nvim/

USER root
WORKDIR /home/nvim/workdir/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]

CMD echo -e "please read repo readme.md for run instructions"
