NixOS who??
<br/>
<br/>Archlinux supremacy only. No need NixOS for nothing\\
<br/>All my homies hate NixOS\\
<br/>
<br/>Basic `Archlinux (CachyOS repos & BORE kernel) + Hyprland` install focusing on minimalism and low (we are talking about reallyy loww) resource consumption. <br/>Max your work hours in style~
<br/>Surely you'll get to squeeze your battery like a lemon and get couple of more hours from it~
<br/>
<br/>Installation for noobs:
<br/>(simply copy paste the following line in your blank tty after minimal archinstall)

##
    cd /opt/ && sudo git clone https://github.com/Tahseenx/archinstall.git && sudo chown $USER:$USER archinstall/ && cd archinstall/ && sudo chmod +x archinstall.sh && ./archinstall.sh


<br/>Enjoy!!
<br/>Death to NixOS users\\
<br/>
<br/>
<br/>
<br/>Important Notes:
<br/>--------------------
<br/>Didn't include any gpu packages, install what you need. If you use Nvidia simply copy paste the following command in the terminal, and then follow along https://wiki.hyprland.org/Nvidia.
##
        paru -S --needed linux-cachyos-bore-nvidia-open nvidia-utils lib32-nvidia-utils nvidia-settings
Yes, `nvidia-open` because a certain indie gpu designing company stopped working on `nvidia-dkms` we are on our own bois~
<br/>
<br/>You may also want to tinker a little bit with `~/.config/hypr/hyprland.conf` since not everything that I added there will work for you. You need to change a lil bit here and there. Get your ass to work, surprise surprise you are using linux\\
<br/>
<br/>Going through the `hyprland.conf` will help you to get accustomed to the graphical system more and you will be able to customize it to your heart's content in no time.
<br/>
<br/>
<br/>Changing your installed kernel to `CachyOS BORE` kernel:
<br/>-------------------------------------------------------------------------
<br/>You gotta do it manually. It's easy tho
<br/>I'm gonna walk you through it step by step
<br/>
<br/>Step - 1:
##
        cd /boot/loader/entries
<br/>Step -2:
##
        sudo vim [enter your linux kernel name].conf
<br/>Step -3:
<br/>You just need to add a couple of changes here. 2 places to be specific. Make sure you make your lines look like mine.
<br/>The first line is this one `linux   /vmlinuz-linux-cachyos-bore`
<br/>The second line is this one `initrd  /initramfs-linux-cachyos-bore.img`
<br/>
<br/>Now save it and get out of your text editor.
<br/>
<br/>
<br/>Step - 4:
<br/>Same as `Step - 3`, make your kernel name similar to `linux-cachyos-bore`.
<br/>For example: `2024-11-19_07-21-04_linux-cachyos-bore.conf` like this.
<br/>
<br/>
<br/>Step - 5:
##
        sudo mkinitcpio -P
You're done!! You'll log into `linux-cachyos-bore` kernel from your next boot. It is completely safe to remove your previous kernels by doing this:
##
        paru -Rns [enter your kernel name]
if you installed the default Linux kernel it will be simply `linux`.
<br/>`linux-lts` for the Lts kernel
<br/>`linux-zen` for the Zen kernel etc etc
