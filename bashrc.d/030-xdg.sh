###############################################################################
# XDG Base Directory Specification
###############################################################################
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

###############################################################################
# Ensure directories
###############################################################################
mkdir -p \
  "$XDG_CONFIG_HOME" \
  "$XDG_CACHE_HOME" \
  "$XDG_DATA_HOME" \
  "$XDG_STATE_HOME"

###############################################################################
# Common program migrations (safe defaults)
###############################################################################
# Less history
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# wget
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# npm (if installed)
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Python history
export PYTHONHISTFILE="$XDG_STATE_HOME/python/history"
