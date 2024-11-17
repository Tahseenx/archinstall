#
# ~/.bashrc
#

# hyprland login without login manager
if [ "$(tty)" = "/dev/tty1" ] ; then
    exec Hyprland
fi

# fastfetch, a better neofetch
fastfetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# bashrc decoration
export PS1="\n\[\e[37m\]╔═\[\e[m\] \[\e[31m\]\u\[\e[m\]\[\e[37m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\] \[\e[33m\][\[\e[m\]\[\e[37m\]\@\[\e[m\]\[\e[33m\]]\[\e[m\] \n\[\e[37m\]╚═══\[\e[m\]\[\e[31m\]\w\[\e[m\]\[\e[37m\]->\[\e[m\] "
