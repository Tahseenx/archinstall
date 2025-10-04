#!/bin/bash

# Add CachyOS Repos
cd
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh
cd

# Install Packages
paru -S --needed 7zip brightnessctl dosfstools fastfetch foot git hyprland hyprshot hyprsunset linux-cachyos-bore linux-cachyos-bore-headers linux-cachyos-bore-nvidia-open mkinitcpio-firmware ungoogled-chromium-bin vim wofi

# Install Wine
paru -S wine-ge-custom
paru -S --needed --asdeps giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2

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
