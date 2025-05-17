# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
mkcd() { mkdir -p "$1" && cd "$1"; }

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='vim'
alias playonlinux='com.playonlinux.PlayOnLinux4'
alias vlc='org.videolan.VLC'
alias vpn='netExtender --username=janmejoy.sarkar --password=J@nMeJoY#*p*2022 --domain=LocalDomain --auto-reconnect moon.iucaa.in:4433'
alias ql='python3 $HOME/Dropbox/Janmejoy_SUIT_Dropbox/scripts/quick_look.py'
alias dropbox='python3 $HOME/dropbox.py'
alias ql='python3 $HOME/Dropbox/Janmejoy_SUIT_Dropbox/scripts/quick_look.py'
alias qlt='python3 $HOME/Dropbox/Janmejoy_SUIT_Dropbox/scripts/quick_look_tile.py'
alias token='cat $HOME/Dropbox/Janmejoy_SUIT_Dropbox/scripts/github_token.txt'
alias speed='echo "Speed (eg. 1GHz): "; read SPEED; sudo cpupower frequency-set --max $SPEED'
alias hibernate='systemctl hibernate'
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PS1="\[\033[38;5;214m\]λ\[\e[00;220m\] \[\e[38;5;223m\]\w\[\033[0m\] \n ❯ "
#export PS1="\[\e[38;5;216m\]\u\[\e[38;5;220m\]@\[\e[38;5;222m\]\h \[\e[38;5;229m\]\w \[\033[0m\]$ "

TERMINAL='/bin/kgx'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/janmejoy/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/janmejoy/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/janmejoy/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/janmejoy/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda activate solphy
