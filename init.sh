export PATH=$HOME/bin:$HOME/go/bin:$PATH

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
KCTX=$(kubectx -c | sed 's/lacework\.teleport\.sh-//')
export PS1="\h [$KCTX] \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

GPG_TTY=$(tty)
export GPG_TTY

KEYFILE=$HOME/.keys
if [[ -e $KEYFILE ]]; then
	source $KEYFILE
fi

alias ls='ls --color'

source ~/dotfiles/alias.sh

# LW Dev settings
LW_DEV_ENV=qan1
export PATH=$PATH:$HOME/baga/includes
