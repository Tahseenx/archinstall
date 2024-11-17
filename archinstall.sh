#!/bin/bash

# Update package lists
paru

# Install packages
paru -Sy --needed base-devel bluez bluez-utils brave-bin brightnessctl fastfetch foot gnome-themes-extra grim gvfs hyprland hyprpolkitagent-git hyprshade ibus-avro-git lib32-nvidia-utils lib32-opencl-nvidia libreoffice-fresh mpv ntfs-3g nwg-look p7zip papirus-icon-theme slurp steam swayimg thunar thunar-archive-plugin thunar-volman tumbler wl-clipboard wofi xarchiver

echo "


:: Installation of Packages complete!"
