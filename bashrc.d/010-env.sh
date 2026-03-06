###############################################################################
# General shell options
###############################################################################
shopt -s checkwinsize      # update LINES/COLUMNS automatically
shopt -s histappend        # append to history instead of overwrite
shopt -s cmdhist           # multi-line commands saved as one
shopt -s globstar          # ** recursive globbing (bash 4+)

###############################################################################
# History configuration
###############################################################################
HISTSIZE=5000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups:ignorespace
HISTIGNORE="ls:bg:fg:history:clear"

# Immediately append + reload history
PROMPT_COMMAND="history -a; history -c; history -r${PROMPT_COMMAND:+;$PROMPT_COMMAND}"

###############################################################################
# Better defaults
###############################################################################
set -o noclobber           # prevent accidental overwrite with >
set -o notify              # background job notifications immediately

# safer permissions by default
umask 022

###############################################################################
# Editor preference
###############################################################################
export EDITOR="${EDITOR:-vim}"
export VISUAL="$EDITOR"

###############################################################################
# Pager improvements
###############################################################################
export LESS="-FRX"
export LESSHISTFILE=-

###############################################################################
# Colored output (if supported)
###############################################################################
if command -v dircolors > /dev/null 2>&1; then
    eval "$(dircolors -b)"
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

###############################################################################
# Bash completion (if available)
###############################################################################
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

###############################################################################
# Simple modern prompt
###############################################################################
PS1='\u@\h:\w\$ '
