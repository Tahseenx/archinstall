#!/bin/bash

# Update package lists
paru

# Install packages
paru -S --needed base-devel bluez bluez-utils brave-bin brightnessctl fastfetch foot gnome-themes-extra grim gvfs hyprland hyprpolkitagent-git hyprshade ibus-avro-git lib32-nvidia-utils lib32-opencl-nvidia libreoffice-fresh mpv ntfs-3g nwg-look p7zip papirus-icon-theme slurp swayimg thunar thunar-archive-plugin thunar-volman tumbler wl-clipboard wofi xarchiver

# Bashrc and Vimrc
cp .bashrc .vimrc /home/monon/

# Copy Hyprland config
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

echo "  
     v  v  v  v  v  v  v  v  v  v  v  v  
  => Installation of Packages complete! <=
     ^  ^  ^  ^  ^  ^  ^  ^  ^  ^  ^  ^
     
     "
