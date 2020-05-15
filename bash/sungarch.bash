#################
# sung's bashrc #
#################
# VIM first 
export EDITOR=vim
#setterm -blength 0
set -o vi

######################################
# User specific aliases and functions #
#######################################
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias vi='vim'
#alias ssh='ssh -XC'
alias ssh='ssh -XY'

# google drive
# https://github.com/astrada/google-drive-ocamlfuse/wiki/Automounting
mount | grep "${HOME}/Gdrive_cam " >/dev/null || /usr/bin/google-drive-ocamlfuse "${HOME}/Gdrive_cam"&
