#
# ~/.bash_profile
#

# XDG base dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Custom user scripts
export PATH="$XDG_CONFIG_HOME/scripts:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
