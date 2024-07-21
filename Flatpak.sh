#!/bin/bash

# Instalación de Flatpak para KDE

sudo apt install flatpak -y                                                                    # Instalación de Flatpak
sudo apt install gnome-software-plugin-flatpak                                                 # Instalacion del Backend de Flathuk para Gnome 
# sudo apt install plasma-discover-backend-flatpak -y                                          # Instalación del backend de Flatpak para Plasma 
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo     # Añadir el repositorio de Flathub si no existe

#=========================================================================================#
echo "es necesario reiniciar." 

# sudo shutdown -r 1 

