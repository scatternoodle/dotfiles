#
# ~/.bashrc
#

# *** INITITAL SETUP ***
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# *** ALIASES ***
# make it so that ssh-agent is always started with X11
alias startx="ssh-agent startx"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
