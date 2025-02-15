#!/bin/bash

 apt update &&  apt upgrade -y
 apt-get install software-properties-common -y &&  apt-add-repository contrib -y                        # Agregamos Contrib Repo

setxkbmap 'us(intl)'                                                                                    # Teclado en Ingles Internacional con teclas muerta (AltGR)


# Instalaciones 

 apt install nala -y &&  nala fetch --auto -y                                                           # Examina los servidores espejo y setea los 3 primeros por defecto.

 apt install xorg i3 i3status dunst suckless-tools linux-headers-amd64 polybar -y                       # Esenciales para i3

 apt install lxpolkit ntfs-3g xfce4-session

 apt install zsh ufw clamav git wget curl  htop preload kitty rofi compton font-manager lxappearance timeshift flameshot -y     

 apt install feh lxappearance numlockx arc-theme  solaar thunar gnome-calculator gnome-calendar obs-studio  -y  #papirus-icon-theme // copyQ = clipbord manager // solaar = Control de mouse para el MX3          

 apt install xrandr gammy copyQ

# Gestion de Audio y Sonido 

 apt install pulseaudio-utils pavucontrol pulseaudio-module-bluetooth blueman pipewire-alsa pipewire-jack pipewire-audio wireplumber pipewire-pulse libspa-0.2-bluetooth -y # https://wiki.debian.org/PipeWire