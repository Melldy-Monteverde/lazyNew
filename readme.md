```#!/bin/bash
echo "Seteando los mirros más rapidos..."
sudo pacman-mirrors --fasttrack

echo "Habilitando firewall"
sudo ufw enable

echo "Actualizando la base de datos de paquetes..."
sudo pacman -Syu --noconfirm

sudo pacman -Sy base-devel

echo "Instalando Snap..."
pacman -S --noconfirm snapd
systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

echo "Instalando Flatpak..."
pacman -S --noconfirm flatpak

echo "Instalando yay..."
sudo pacman -S yay

echo "Instalando descompresores de archivos..."
sudo pacman -S --noconfirm unrar unzip p7zip tar

echo "Instalando herramientas de terminal..."
sudo pacman -S --noconfirm wget curl htop httpie neofetch

echo "Instalando controlador de CPU"
sudo snap install auto-cpufreq

echo "Instalando exploradores..."
sudo pacman -S --noconfirm brave-browser firefox-developer-edition chromium

yay -S --noconfirm google-chrome

echo "Instalando paquete office..."
sudo snap install --noconfirm wps-office-multilang

echo "Instalando apps multimedia..."
sudo pacman -S --noconfirm vlc

echo "Instalando administrador de discos..."
sudo pacman -S --noconfirm gparted

echo "Limpiando paquetes no necesarios..."
pacman -Qdtq | pacman -Rns --noconfirm

echo "Instalando microcode para optimizar procesador..."
sudo pacman -S --noconfirm linux-firmware
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "Habilitar el TRIM (solo disco SSD)"
sudo systemctl enable fstrim.timer

echo "¡Actualización completa!"

reboot
```

