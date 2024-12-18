#!/bin/bash

# Update pacman.conf
# sudo cp pacman.conf /etc/

# Paru install
cd ..
sudo git clone https://aur.archlinux.org/paru.git
sudo chown $USER:$USER paru/
cd paru/
makepkg -si
cd ..

# Add CachyOS repository
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh
cd ..
cd archinstall/

# Install packages
paru -S --needed base-devel brave-bin breeze-gtk brightnessctl cpupower dosfstools fastfetch foot grim gvfs hyprland hyprpolkitagent-git hyprshade libreoffice-fresh linux-cachyos-bore linux-cachyos-bore-headers mkinitcpio-firmware mpv nwg-look p7zip slurp swayimg thunar thunar-archive-plugin thunar-volman tlp tumbler vim wl-clipboard wofi xarchiver

# Bashrc and Vimrc
cp .bashrc .vimrc /home/monon/

# Copy Hyprland config
mkdir -p ~/.config/hypr
cp hyprland.conf ~/.config/hypr/

# Fastfetch config
mkdir -p ~/.config/fastfetch
cp config.jsonc ~/.config/fastfetch/

# Foot config
mkdir -p ~/.config/foot
cp foot.ini ~/.config/foot/

# Swayimg config
mkdir -p ~/.config/swayimg
cp config ~/.config/swayimg/

# Cpupower config
sudo cp cpupower /etc/default/

# Add Hyprshade blue light filter shader
sudo cp bl.glsl /usr/share/hyprshade/shaders/

# Add Microsoft default fonts
cp -r .fonts /home/monon/

# Enable necessary services
sudo systemctl enable tlp
sudo systemctl enable cpupower

# Reboot the machine
reboot
