# ~/.bashrc

# -----------------------------------------------------------------------------
# *** INITITAL SETUP ***
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# -----------------------------------------------------------------------------
# *** SESSION VARIABLES ***

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Opt out of Microsoft .NET telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# -----------------------------------------------------------------------------
# *** PATH ADDITIONS ***

export PATH="$HOME/go/bin:$PATH"

# -----------------------------------------------------------------------------
# *** ALIASES ***

# General navigation
alias -- '-'='cd -'
alias '..'='cd ..'
alias h="cd $HOME"

# make it so that ssh-agent is always started with X11
alias startx="ssh-agent startx"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias v='nvim'

# lsd - better ls
alias l="lsd -l"
alias la="lsd -al"
