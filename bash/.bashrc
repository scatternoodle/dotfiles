# ~/.bashrc

# -----------------------------------------------------------------------------
# *** INITITAL SETUP ***
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# -----------------------------------------------------------------------------
# *** SESSION VARIABLES ***

# Bash settings
HISTCONTROL=ignoreboth # Don't write lines that are blank or begin with space.
shopt -s histappend # Append to history file rather than overwriting.
HISTSIZE=1000
HISTFILESIZE=2000
# After each command, check window size and update COLUMNS and LINES accordingly.
shopt -s checkwinsize
# If set, the pattern ‘**’ used in a filename expansion context will match all
# files and zero or more directories and subdirectories. If the pattern is
# followed by a ‘/’, only directories and subdirectories match. 
# shopt -s globstar

# Set default text editor under various circumstances.
export VISUAL=nvim
export EDITOR=nvim
# Because my Neovim config has loads of plugins, most of which are 3rd party,
# I don't feel comfortable running it with sudo - for that we can make do with
# the stock vim install.
export SUDO_EDITOR=vim

# ssh-agent writes to this, required for SSH to work with systemd without manually
# starting it.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Opt out of Microsoft .NET telemetry, if we (really have to) do any .NET.
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# -----------------------------------------------------------------------------
# *** PATH ADDITIONS ***

export PATH="$HOME/go/bin:$PATH"
export PATH="/opt:$PATH"

# -----------------------------------------------------------------------------
# *** SOURCE FROM FILES ***

source_dir="$HOME/.config/bash-sources"
if [ -d "$source_dir" ]; then
	for file in "$source_dir/"*.sh; do
		[ -r "$file" ] && source "$file"
	done
fi

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
alias lt="lsd -l --tree"
