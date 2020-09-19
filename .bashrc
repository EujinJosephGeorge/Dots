#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias neofetch='neofetch | lolcat'
alias c='clear'
alias e='exit'
alias bat='bat --theme=ansi-dark'

#Commands

command -v lsd > /dev/null && alias ls='lsd --group-dirs first'
command -v htop > /dev/null && alias top='htop'
command -v bashtop > /dev/null && alias btop='bashtop'
command -v bat > /dev/null && alias cat='bat --pager=never'

OS_ICON=
PS1="\n \[\033[0;34m\]╭─────\[\033[0;31m\]\[\033[0;37m\]\[\033[41m\] $OS_ICON \u \[\033[0m\]\[\033[0;31m\]\[\033[0;34m\]─────\[\033[0;32m\]\[\033[0;30m\]\[\033[42m\] \w \[\033[0m\]\[\033[0;32m\] \n \[\033[0;34m\]╰ \[\033[1;36m\]\$ \[\033[0m\]"
#'[\u@\h \W]\$ '

#Bash Completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

#For Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then

        source /etc/profile.d/vte.sh

fi
