# Setup fzf
# ---------
if [[ ! "$PATH" == */home/dr4ghs/programs/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/dr4ghs/programs/fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/dr4ghs/programs/fzf/shell/completion.bash"

# Key bindings
# ------------
# source "/home/dr4ghs/programs/fzf/shell/key-bindings.bash"
