#!/usr/bin/env bash

# Environment variables
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin # Go

# Load all programs setup
for FILE in $HOME/.config/bash/programs/*.sh; do source $FILE; done

# Programs initialization
eval "$(starship init bash)" # Starship
eval "$(zoxide init bash --cmd cd)" # Zoxide 
[ -f "$HOME/.config/.fzf.bash" ] && source "$HOME/.config/.fzf.bash" # fzf
[ -x "$HOME/.cargo" ] && source "$HOME/.cargo/env" # Cargo
[ -x "$HOME/.deno" ] && . "$HOME/.deno/env" # Deno

