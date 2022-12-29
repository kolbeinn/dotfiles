BREW=/home/linuxbrew/.linuxbrew/bin/brew
APT=/usr/bin/apt-get

$BREW install rg
$BREW install lacework/tap/lacework-cli
$BREW install neovim
$BREW install fzf

sudo $APT update
sudo $APT install net-tools

mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim
cp ./coc-settings.json ~/.config/nvim

mkdir -p ~/.config/kolbeinn
cp ./init.sh ~/.config/kolbeinn

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


