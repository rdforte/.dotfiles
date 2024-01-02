# Dotfiles

## Getting Started
```
❯ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
❯ git clone --bare https://github.com/rdforte/.dotfiles $HOME/.dotfiles
❯ dotfiles config --local status.showUntrackedFiles no
❯ dotfiles checkout
```
If you already have some of the dotfiles present, you will see this error.
```
error: The following untracked working tree files would be overwritten by checkout:
 .bashrc
Please move or remove them before you switch branches.
Aborting
```
Remove or backup any collisions and repeat the checkout.

[original dotifles medium article](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049)

## Fonts
install [NerdFonts](https://github.com/ryanoasis/nerd-fonts) with homebrew
```
brew tap homebrew/cask-fonts
brew search fonts | grep -i jetbrains
brew install --cask font-jetbrains-mono-nerd-font
```

## NVIM
[nvim setup/getting started](./.config/nvim/README.md)

## TMUX
install [tpm tmux plugin manager](https://github.com/tmux-plugins/tpm)
To resize panes in tmux you will need to run your prefix key `control p` followed by `command <arrow key>`
