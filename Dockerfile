FROM archlinux
# It is faster downloading Reflectior and chekcking which mirror is faster.
RUN pacman --noconfirm -Sy reflector
RUN reflector --verbose --latest 20 --sort rate --save /etc/pacman.d/mirrorlist
# Upgrade system
RUN pacman -Syu --noconfirm