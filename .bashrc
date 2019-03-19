# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
function cdls() {
    \cd $1;
    ls -F --color=auto;
}

eval `dircolors ~/.colorrc`
alias ls='ls -F --color=auto'
alias rm='rm -i'
alias cd=cdls

if [ $SHLVL = 1 ]; then
  alias tmux="tmux attach-session || tmux new-session \; source-file ~/.tmux/new-session"
fi

export PATH=$PATH:~/.cabal/bin:~/.vim/bundle/vim-themis/bin
unset SSH_ASKPASS
