##
        paru -S wine-ge-custom
        paru -S --needed --asdeps giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2
<br/>1. Need to manually change `linux` kernel to `linux-cachyos-bore` kernel. Nvidia driver is `linux-cachyos-bore-nvidia-open`, `nvidia-utils`, `lib32-nvidia-utils`, `nvidia-settings`.
<br/>
<br/>2. Need to edit mkinitcpio hooks at `/etc/mkinitcpio.conf`. Uncomment the autodetect sane default HOOK setup, and delete the currently used HOOK. Replace `base` and `udev` with `systemd`, and delete `fsck`.
<br/>
<br/>3. Add `nowatchdog` (and `intel_pstate=passive` if using cpu power) in the `options` line in `/boot/loader/entries/linux-cachyos-bore.conf`. Additionally `nowatchdog` `quiet` `loglevel=3` `systemd.show_status=auto` `rd.udev.log_level=3` `modprobe.blacklist=iTCO_wdt`
<br/>
<br/>4. make an EFI stub entry using efibootmgr:
##
        sudo efibootmgr -c -d /dev/nvme0n1 -p 1 -L "Voidlinux" -l /vmlinuz-linux -u 'root=UUID=XXXXXroot-partition-uuidXXXXXX rw initrd=\initramfs-linux.img'
