BREW=/home/linuxbrew/.linuxbrew/bin/brew
APT=/usr/bin/apt-get

$BREW install rg
$BREW install lacework/tap/lacework-cli
$BREW install neovim
$BREW install fzf

sudo $APT update
sudo $APT install net-tools
