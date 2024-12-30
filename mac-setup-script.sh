#!/bin/sh

set -e

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Spectacle"
brew install --cask spectacle # deprecated

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing GitHub CLI..."
brew install gh

echo "😼 => Installing GitHub Copilot extension..."
gh extension install github/gh-copilot

echo "😼 => Installing GitHub Copilot markdown preview..."
gh extension install yusukebe/gh-markdown-preview

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Hugo..."
brew install hugo

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Fonts..."
brew alfred
brew install --cask font-jetbrains-mono-nerd-font

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Tmux..."
brew install tmux

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Kitty..."
brew install kitty

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing NVIM..."
brew install neovim

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Ripgrep..."
brew install ripgrep

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Go Developer Tools..."
echo "🍕 GVM\n\n"
brew update
echo "🍕 Installing Mercurial\n\n"
brew install mercurial
echo "🍕 Installing Go so we can install GVM and set go version\n\n"
brew install go
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.22
echo "🍕 Setting go1.22 as default\n\n"
gvm use go1.22 --default
echo "🍕 Uninstalling go\n\n"
brew uninstall go
echo "🍕 Installing Delve\n\n"
brew install delve
echo "🍕 goimports-revised\n\n"
brew tap incu6us/homebrew-tap
brew install incu6us/homebrew-tap/goimports-reviser
echo "🍕 install gofumpt\n\n"
go install mvdan.cc/gofumpt@latest
echo "🍕 install golines\n\n"
go install github.com/segmentio/golines@latest


echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Node Developer Tools..."
echo "NVM Node Version Manager"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing PYENV..."
echo "Python Version manager"
brew install pyenv

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Protobuf..."
brew install protobuf

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Postman..."
brew install --cask postman

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Docker..."
brew install docker

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing VSCode..."
brew install --cask visual-studio-code

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Slack..."
brew install --cask slack

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Notion"
brew install --cask notion

# image compression
echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing GraphicsMagic..." 
brew install graphicsmagick

# yazi
echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing Yazi..." 
brew install yazi

# lazygit
echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Installing LazyGit..." 
brew install jesseduffield/lazygit/lazygit

echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩"
echo "🍺 => Arduino TinyGo Support..."
brew tap tinygo-org/tools
brew install tinygo
brew install avrdude

echo "FINISHED! 👏"
