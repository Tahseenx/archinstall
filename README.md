##
        sudo pacman -S wine-staging
        sudo pacman -S --needed --asdeps giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2
<br/>1. Need to manually change `linux` kernel to `linux-cachyos-bore` kernel. Nvidia driver is `linux-cachyos-bore-nvidia-open`, `nvidia-utils`, `lib32-nvidia-utils`, `nvidia-settings`. Add nvidia modules for convenience. See [Hyprland/Nvidia](https://wiki.hyprland.org/Nvidia/).
<br/>
<br/>2. Need to edit mkinitcpio hooks at `/etc/mkinitcpio.conf`. Uncomment the autodetect sane default HOOK setup, and delete the currently used HOOK. Replace `base` and `udev` with `systemd`, and delete `fsck`.
<br/>
<br/>3. Add `nowatchdog` and `intel_pstate=passive` in the `options` line in `/boot/loader/entries/linux-cachyos-bore.conf`. Additionally `nowatchdog` `quiet` `loglevel=3` `systemd.show_status=auto` `rd.udev.log_level=3`
<br/>
<br/>4. CS2 launch options
<br/>
##
    gamemoderun +exec autoexec.cfg -nojoy -high +r_drawparticles 0 -d3d9ex -novid -no-browser +mat_queue_mode 2 +fps_max 0 +cl_interp_ratio 1 +cl_interp 0.031 -tickrate 128 +cl_cmdrate 128 +cl_updaterate 128 +cl_forcepreload 1 -vulkan
