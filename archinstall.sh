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
paru -S --needed base-devel brave-bin brightnessctl fastfetch foot grim gvfs hyprland hyprpolkitagent hyprshade libreoffice-fresh mpv nwg-look p7zip qbittorrent slurp steam swayimg thunar thunar-archive-plugin tumbler vim wl-clipboard wofi xarchiver

# Bashrc and Vimrc
cp .bashrc .vimrc ~/

# Copy Hyprland config
mkdir -p ~/.config/hypr
cp hyprland.conf ~/.config/hypr/
cp hyprshade.toml ~/.config/hypr/

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
# sudo cp cpupower /etc/default/

# Add Hyprshade blue light filter shader
sudo cp /usr/share/hyprshade/shaders/blue-light-filter.glsl /usr/share/hyprshade/shaders/bl.glsl

# Auto Hyprshade on/off
# sudo systemctl --user enable --now hyprshade.timer

# Add Microsoft default fonts
cp -r .fonts /home/monon/

# Enable necessary services
# sudo systemctl enable tlp
# sudo systemctl enable cpupower

# Reboot the machine
reboot
