FROM archlinux
RUN pacman --noconfirm -S reflector
RUN reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
RUN pacman -Syu --noconfirm