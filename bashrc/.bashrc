# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Custom aliases
alias flushdns='sudo systemd-resolve --flush-caches'
alias sd='sudo shutdown now'
alias rs='sudo reboot'
alias nigga='echo hi nigga'
alias sudo='sudo '
alias stirling='java -jar /opt/Stirling-PDF/Stirling-PDF.jar'

# Set editor to neovim
export EDITOR="nvim"
export VISUAL="nvim"
export PATH="$HOME/.cargo/bin:$PATH"
# source $HOME/.profile_spp

source /home/sidharth/.local/share/mkcd/mkcd.sh

# annotated by dave eddy (@yousuckatprogramming)
# explained - https://youtu.be/D0sG2fj0G4Y
# borrowed heavily from https://grml.org

# Begin blinking text mode
# I just use bold red here since my terminal has blinking disabled
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33;44m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;1;32m'
export LESS_TERMCAP_mr=$'\e[7m'
export LESS_TERMCAP_mh=$'\e[2m'
export LESS_TERMCAP_ZN=$'\e[74m'
export LESS_TERMCAP_ZV=$'\e[75m'
export LESS_TERMCAP_ZO=$'\e[73m'
export LESS_TERMCAP_ZW=$'\e[75m'
export MANPAGER='less'
export GROFF_NO_SGR=1


PS1='\[\e[36m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\$ '

bind '"\C-H": backward-kill-word'

alias ls='ls -a --color=auto'
alias n8n='sudo docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n'
alias cpwd='pwd | wl-copy'

