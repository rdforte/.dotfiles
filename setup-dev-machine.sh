#!/bin/sh

set -e

# Homebrew Script for OSX

echo "=> Installing XCode Developer tools..."
xcode-select --install

echo "=> Installing GitHub CLI..."
brew install gh

echo "=> Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "=> Installing Fonts..."
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

echo "=> Installing Tmux..."
brew install tmux

echo "=> Installing Kitty..."
brew install kitty

echo "=> Installing NVIM..."
brew install neovim

echo "=> Installing Ripgrep..."
brew install ripgrep

echo "=> Go Developer Tools..."
echo "GVM"
brew update
brew install mercurial
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
echo "Delve"
brew install delve

echo "=> Node Developer Tools..."
echo "NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "FINISHED!"
