# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
function cdls() {
    \cd $1;
    ls;
}

function share_history {
  history -a
  history -c
  history -r
}

# avaiable ctrl-s (search forward)
stty stop undef

# history size
export HISTSIZE=10000
export HISTFILESIZE=10000

alias rm='rm -i'
alias cd=cdls

if [ $SHLVL = 1 ]; then
  alias tmux="tmux attach || tmux new-session \; source-file ~/.tmux/new-session"
fi

unset SSH_ASKPASS

PROMPT_COMMAND='share_history'
shopt -u histappend
