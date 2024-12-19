# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.local/programs/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}$HOME/.local/programs/fzf/bin"
fi

# Auto-completion
# ---------------
source "$HOME/.local/programs/fzf/shell/completion.bash"

# Key bindings
# ------------
source "$HOME/.local/programs/fzf/shell/key-bindings.bash"

