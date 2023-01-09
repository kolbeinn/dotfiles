# git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gau='git add -u'
alias gaac='git add --all && git commit -sS'
alias gb='git branch'
alias gbsc='git branch --sort=-committerdate'
alias gc='git commit -sS'
alias gcf="{ gh repo list lacework --limit 500 & gh repo list lacework-dev --limit 500; } | sed 's/\t.*//g' | fzf | sed 's/\(.*\)/http:\/\/github\.com\/\1\.git/' | xargs git clone"
alias gd='git diff'
alias gl='git log'
alias gpl='git pull'
alias gs='git status'
alias gsf='git switch `git branch --sort=-committerdate|fzf`'
alias gsw='git switch'

# other
alias awslocal='aws --endpoint-url=http://localhost:4566 --profile localstack'
alias k='kubectl'
alias lwsecrets='export LW_API_KEY=$(lacework configure show api_key); export LW_API_SECRET=$(lacework configure show api_secret); export LW_ACCOUNT=$(lacework configure show account)'
alias sudo='sudo '
alias tf='terraform'
alias vim='nvim'
