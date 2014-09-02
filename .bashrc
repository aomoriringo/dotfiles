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

alias rm='rm -i'
alias cd=cdls

if [ $SHLVL = 1 ]; then
  alias tmux="tmux attach || tmux new-session \; source-file ~/.tmux/new-session"
fi

unset SSH_ASKPASS
