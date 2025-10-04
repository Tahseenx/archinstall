#!/bin/bash

# Add CachyOS Repos
cd
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh
cd

# Install Packages
paru -S --needed 7zip brightnessctl dosfstools fastfetch foot git hyprland hyprshot hyprsunset linux-cachyos-bore linux-cachyos-bore-headers linux-cachyos-bore-nvidia-open mkinitcpio-firmware ungoogled-chromium-bin vim wofi

cd ~/archinstall

# Bashrc and Vimrc
cp .bashrc .vimrc ~/

# Fastfetch config
mkdir ~/.config/fastfetch
cp config.jsonc ~/.config/fastfetch/

# Foot config
mkdir ~/.config/foot
cp foot.ini ~/.config/foot/

# GTK settings.ini
mkdir ~/.config/gtk-3.0
cp settings.ini ~/.config/gtk-3.0

# Add Microsoft default fonts
cp -r .fonts ~/

# Reboot the machine
reboot
