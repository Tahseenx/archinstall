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
<br/>
<br/>Didn't include any gpu packages, install what you need. If you use Nvidia simply copy paste the following command in the terminal, and then follow along https://wiki.hyprland.org/Nvidia.
##
        paru -S --needed linux-cachyos-bore-nvidia-open nvidia-utils lib32-nvidia-utils nvidia-settings
<br/>
<br/>Yes, `nvidia-open` because Nvdia stopped working on `nvidia-dkms` we are on our own bois~
<br/>
<br/>You may also want to tinker a little bit with `~/.config/hypr/hyprland.conf` since not everything that I added there will work for you. You need to change a lil bit here and there. Get your ass to work, surprise surprise you are using linux\\
<br/>
<br/>Going through the `hyprland.conf` will help you to get accustomed to the graphical system more and you will be able to customize it to your heart's content in no time.
