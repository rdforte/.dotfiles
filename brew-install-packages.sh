#!/bin/sh

set -e

echo "🍺 => Installing Spectacle"
brew install --cask spectacle

echo "🍺 => Installing GitHub CLI..."
brew install gh

echo "🍺 => Installing Hugo..."
brew install hugo

echo "🍺 => Installing Fonts..."
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

echo "🍺 => Installing Tmux..."
brew install tmux

echo "🍺 => Installing Kitty..."
brew install kitty

echo "🍺 => Installing NVIM..."
brew install neovim

echo "🍺 => Installing Ripgrep..."
brew install ripgrep

echo "🍺 => Go Developer Tools..."
echo "GVM"
brew update
brew install mercurial
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
echo "Delve"
brew install delve

echo "🍺 => Node Developer Tools..."
echo "NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "🍺 => Installing Postman..."
brew install --cask postman

echo "🍺 => Installing Docker..."
brew install docker

echo "🍺 => Installing VSCode..."
brew install --cask visual-studio-code

echo "🍺 => Installing Slack..."
brew install --cask slack

echo "🍺 => Installing Notion"
brew install --cask notion

# image compression
echo "🍺 => Installing GraphicsMagic..." 
brew install graphicsmagick

echo "🍺 => Arduino TinyGo Support..."
brew tap tinygo-org/tools
brew install tinygo
brew install avrdude

echo "FINISHED!"
