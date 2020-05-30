FROM archlinux

RUN pacman -Syu --noconfirm

#RUN pacman -S --noconfirm reflector
#RUN reflector --latest 1000 --country 'Brazil' --country 'United States' --country 'Chile' --protocol https --sort rate --save /etc/pacman.d/mirrorlist
#RUN pacman -Rns --noconfirm reflector

#RUN pacman -Syu --noconfirm
