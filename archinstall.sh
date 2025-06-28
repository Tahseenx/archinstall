#!/bin/bash

# Update pacman.conf
# sudo cp pacman.conf /etc/

# Paru install
cd /opt/
sudo git clone https://aur.archlinux.org/paru.git
sudo chown $USER:$USER paru/
cd paru/
makepkg -si

#Add CachyOS Repository
cd
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh
cd ~/archinstall

# Install packages
paru -S --needed base-devel brave-bin breeze-gtk brightnessctl fastfetch foot grim gvfs htop hyprland hyprsunset libreoffice-fresh mkinitcpio-firmware mpv nwg-look qbittorrent slurp swayimg thunar thunar-archive-plugin tumbler vim wl-clipboard wofi xarchiver

# Bashrc and Vimrc
cp .bashrc .vimrc ~/

# Copy Hyprland config
mkdir ~/.config/hypr
cp hyprland.conf ~/.config/hypr/

# Fastfetch config
mkdir ~/.config/fastfetch
cp config.jsonc ~/.config/fastfetch/

# Foot config
mkdir ~/.config/foot
cp foot.ini ~/.config/foot/

# Swayimg config
mkdir ~/.config/swayimg
cp config ~/.config/swayimg/

# Cpupower config
# sudo cp cpupower /etc/default/

# Add Microsoft default fonts
cp -r .fonts ~/

# Enable necessary services
# sudo systemctl enable tlp
# sudo systemctl enable cpupower

# Reboot the machine
reboot
