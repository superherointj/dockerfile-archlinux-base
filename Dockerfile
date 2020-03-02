FROM archlinux

# Update mirrors
# RUN echo 'Server = https://mirror.osbeck.com/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist

# Upgrade system
RUN pacman -Syu --noconfirm

RUN pacman -S reflector
RUN sudo reflector --latest 1000 --country 'Brazil' --country 'United States' --country 'Chile' --protocol https --sort rate --save /etc/pacman.d/mirrorlist
RUN pacman -Rns --noconfirm reflector

RUN pacman -Syu --noconfirm