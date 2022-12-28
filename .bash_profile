export PATH=$HOME/bin:$HOME/go/bin:$PATH

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

GPG_TTY=$(tty)
export GPG_TTY

KEYFILE=$HOME/.keys
if [[ -e $KEYFILE ]]; then
	source $KEYFILE
fi

alias vim='nvim'
alias ls='ls --color'
alias g='git'
alias ga='git add'
alias gaac='git add --all && git commit -sS'
alias gau='git add -u'
alias gb='git branch'
alias gbsc='git branch --sort=-committerdate'
alias gc='git commit -sS'
alias gd='git diff'
alias gl='git log'
alias gpl='git pull'
alias gs='git status'
alias gsw='git switch'
alias gsf='git switch `git branch --sort=-committerdate | fzf`'
