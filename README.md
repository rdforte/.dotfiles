# Dotfiles

## Getting Started
Follow the below setup. This will enable us to easily manage our dotfiles using git. For example once setup we can run git commands as such `dotfiles status`, `dotfiles add <file>`, `dotfiles commit`.
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
brew install --cask font-jetbrains-mono-nerd-font
```

## NVIM
[nvim setup/getting started](./.config/nvim/README.md)

## TMUX
install [tmux](https://formulae.brew.sh/formula/tmux)

To resize panes in tmux you will need to run your prefix key `control p` followed by `command <arrow key>`

## Resolving Merge conflicts

For this we are going to rely on VSCode merge conflict tool. So we will need to install [VSCode Download page](https://code.visualstudio.com/download).

You can also run VS Code from the terminal by typing 'code' after adding it to the path: Launch VS Code. 
Open the Command Palette (Cmd+Shift+P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.

