#!/bin/bash
###################################################################################################################################################

# Inicial de instalacion de i3 para entorno debian sin gui. se necesita instalar en modo server 

# de momento es mejor tener el xfce instalado ya q nos facilitara la vida. 

# 1. Pendiente de documentacion de que hace cada paquete instalado o para que es 

#test vscode web // Si funciona jeje


#######################################################################################################################

sudo apt update && sudo apt upgrade && sudo apt install nala                                                                                               #  Actualizacion inicial 
sudo nala fetch --auto -y                                                                                                                                  # Examina los servidores espejo y setea los 3 primeros por defecto. 
sudo nala install xorg i3 i3lock i3status i3lock-fancy rofi -y 

sudo apt install linux-headers-amd64 -y 
setxkbmap 'us(intl)'                                                                                                                                       # Esto setea el teclado en Ingles Internacional con teclas muerta (AltGR)

sudo nala install wget curl ufw font-manager zsh htop preload kitty dunst rofi lxappearance suckless-tools xrandr -y &&                                    # Instala Paquetes basicos.


#=======================================================================================#

# Configuraciones basicas de seguridad.
echo "================== Firewall configuration =================="

sudo ufw enable                                                                            # Habilitar UFW para gestionar el firewall
sudo ufw default deny incoming                                                             # Configurar el firewall para denegar todas las conexiones entrantes por defecto
sudo ufw default allow outgoing                                                            # Configurar el firewall para permitir todas las conexiones salientes por defecto

#=======================================================================================#

echo "================== Anti-Virus configuration =================="

sudo nala install clamav -y && sudo nala install clamav-daemon -y
sudo systemctl stop clamav-freshclam                                                       # Detener el servicio de actualización de ClamAV
sudo freshclam                                                                             # Actualizar la base de datos de firmas de virus de ClamAV
sudo systemctl start clamav-freshclam                                                      # Iniciar de nuevo el servicio de actualización de ClamAV
sudo systemctl start clamav-daemon                                                         # Habilitar y iniciar el servicio de ClamAV
#=======================================================================================#

echo "Basic configuration done"

# ver documentacion nvidia driver  // https://wiki.debian.org/NvidiaGraphicsDrivers 





