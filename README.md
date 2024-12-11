<br/>1. Need to manually change `linux` kernel to `linux-cachyos-bore` kernel. Nvidia driver is `linux-cachyos-bore-nvidia-open`, `nvidia-utils`, `lib32-nvidia-utils`, `nvidia-settings`. Add nvidia modules for convenience. See [Hyprland/Nvidia](https://wiki.hyprland.org/Nvidia/).
<br/>
<br/>2. Need to edit mkinitcpio hooks at `/etc/mkinitcpio.conf`. Uncomment the base HOOK and delete the currently used HOOK. Replace `base` and `udev` with `systemd`, and delete `fsck`.
<br/>
<br/>3. Add `nowatchdog` and `intel_pstate=passive` in the `options` line in `/boot/loader/entries/linux-cachyos-bore.conf`.
