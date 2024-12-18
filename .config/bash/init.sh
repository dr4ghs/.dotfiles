#!/usr/bin/env bash

# Load all programs setup
for FILE in $HOME/.config/bash/programs/*.sh; do source $FILE; done

# Env vars
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# Zoxide 
eval "$(zoxide init bash)"

# Starship
eval "$(starship init bash)"

# fzf
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash

# Cargo
if [ -x "$HOME/.cargo" ]; then
  . "$HOME/.cargo/env"
fi

# Deno
if [ -x "$HOME/.deno" ]; then
  . "/home/dr4ghs/.deno/env"
fi

