###############################################################################
# Automatic SSH agent management
###############################################################################
SSH_ENV="$HOME/.ssh/agent.env"

start_agent() {
  (umask 066; ssh-agent >"$SSH_ENV")
  . "$SSH_ENV" >/dev/null
}

# Load existing agent if possible
if [ -f "$SSH_ENV" ]; then
  . "$SSH_ENV" >/dev/null
  if ! kill -0 "$SSH_AGENT_PID" 2>/dev/null; then
    rm -f "$SSH_ENV"
    start_agent
  fi
else
  start_agent
fi

# Auto-add default keys quietly
if command -v ssh-add >/dev/null 2>&1; then
  ssh-add -l >/dev/null 2>&1 || ssh-add 2>/dev/null
fi

unset SSH_ENV
unset -f start_agent
