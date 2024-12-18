#!/usr/bin/env bash

# Load all programs setup
for FILE in ./programs/*.sh; do source $FILE; done

# Env vars
export PATH=$PATH:/usr/local/go/bin:~/go/bin

# Zoxide 
eval "$(zoxide init bash)"

# Starship
eval "$(starship init bash)"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Cargo
if [ -x "$HOME/.cargo" ]; then
  . "$HOME/.cargo/env"
fi

