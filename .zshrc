# Created by newuser for 5.7.1
autoload -U compinit
compinit

bindkey -e

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# set prompt
# PS1="%{$fg[cyan]%}[${USER}@${HOST%%.*} %1~]%(!.#.$)${reset_color} "
PS1="%{$fg[cyan]%}[${USER} %1~]%(!.#.$)${reset_color} "

# EDITOR
export EDITOR=vim

export PATH=$PATH:~/.vim/bundle/dein.vim/repos/github.com/thinca/vim-themis/bin/

# direnv
eval "$(direnv hook zsh)"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
