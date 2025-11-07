#
# ~/.bashrc
#

# *** INITITAL SETUP ***
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# *** SESSION VARIABLES ***
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# *** ALIASES ***
# make it so that ssh-agent is always started with X11
alias startx="ssh-agent startx"
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias vim='nvim'

# Add my custom scripts to path
# scripts_dir="$HOME/scripts
# if [ -d "$scripts_dir" ]; then
    # for file in "$scripts_dir"/*.sh; do
	# [ -r "$file" ] && PATH="$file:$PATH";
    # done
# fi
