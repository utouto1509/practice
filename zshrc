setopt auto_cd

setopt auto_pushd
setopt pushd_ignore_dups

setopt auto_menu

setopt list_packed

setopt magic_equal_subst

setopt print_eight_bit

bindkey ";5C" forward-word
bindkey ";5D" backward-word
export WORDCHARS='*?[]~=&;!#$%^(){}<>'

#eval `dircolors`

autoload -U compinit
compinit

#export LSCOLORS=gxfxcxdxbxegedabacad
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:tw=42;30:ow=43;30'

zstyle ':completion:*:default' list-colors ${LS_COLORS}
zstyle ':completion:*' list-colors ${LS_COLORS}
#zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'bd=46;34' 'cd=43;34'


HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt hist_ignore_all_dups
function history-all { history -E 1}

setopt complete_aliases
alias ls='ls -G'
alias la='ls -a -G'
alias ll='ls -l -G | more'
alias lsdir='ls -F | grep -v /'
alias am='alsamixer'
alias dis='display'
alias pd='popd'

alias gd='dirs -v;echo -n "select number:"; read newdir; cd +"$newdir"'

export LANG=ja_JP.UTF-8

alias -s mp3=cvlc
alias -s jpg=dis
alias -s jpeg=dis
alias -s gif=dis



PATH=$PATH:$HOME:/bin
EDITOR=/usr/bin/vi
export PATH EDITOR

function chpwd(){ls}

autoload colors
colors
RPROMPT="%{${fg[yellow]}%}[%W %*]%{${reset_color}%}"
PROMPT="%{${fg[blue]}%}[%n@%~]
%(!.#.$)%{${reset_color}%}"

export PATH=$PATH:/opt/dmd2/bin
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
#LANG=C xdg-user-dirs-gtk-update

# Blender for Mac OS
export PATH=/Applications/blender.app/Contents/MacOS:$PATH

#rails 
export PATH=$HOME/.rbenv/bin:$PATH
