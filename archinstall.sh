#!/bin/bash

# Paru install
cd /opt/
sudo git clone https://aur.archlinux.org/paru.git
sudo chown -R $USER:$USER paru/
cd paru
makepkg -si

# Add CachyOS Repos
cd
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh
cd

# Install Packages
paru -S --needed 7zip base base-devel brightnessctl brave-bin fastfetch foot git hyprland hyprshot hyprsunset linux-cachyos-bore linux-cachyos-bore-headers linux-cachyos-bore-nvidia-open vim wofi xdg-desktop-portal-hyprland transmission-gtk

# Wine dependencies
paru -S --needed --asdeps giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2

cd ~/archinstall

# Bashrc and Vimrc
cp .bashrc .vimrc ~/

# Fastfetch config
mkdir -p ~/.config/fastfetch
cp config.jsonc ~/.config/fastfetch/

# Hyprland config
mkdir -p ~/.config/hypr
cp hyprland.conf ~/.config/hypr/

# Foot config
mkdir -p ~/.config/foot
cp foot.ini ~/.config/foot/

# GTK settings.ini
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/gtk-4.0
cp settings.ini ~/.config/gtk-3.0/
cp settings.ini ~/.config/gtk-4.0/

# Bijoy keyboard (kinda)
sudo cp my_bd /usr/share/X11/xkb/symbols/

# Chromium as media meister
sudo cp x /usr/local/bin/
sudo chmod +x /usr/local/bin/x

# Add Microsoft default fonts
cp -r .fonts ~/

# Reboot the machine
reboot
