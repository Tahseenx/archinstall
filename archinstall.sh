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

# Wine GE Custom
paru -S wine-ge-custom
paru -S --needed --asdeps 7zip breeze-gtk brightnessctl gvfs mkinitcpio-firmware thunar-archive-plugin tumbler wofi giflib lib32-nvidia-utils lib32-giflib nwg-look gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins wl-clipboard lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2

# Install packages
paru -S --needed base-devel fastfetch foot hyprshot hyprland hyprsunset mpv thunar xdg-desktop-portal-hyprland linux-cachyos-bore linux-cachyos-bore-headers linux-cachyos-bore-nvidia-open

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

# Add Microsoft default fonts
cp -r .fonts ~/

# Reboot the machine
reboot
