# Dotfiles

## Getting Started

Follow the below setup. This will enable us to easily manage our dotfiles using git. For example once setup we can run git commands as such `dotfiles status`, `dotfiles add <file>`, `dotfiles commit`.

```
git clone --bare https://github.com/rdforte/.dotfiles $HOME/.dotfiles
cd ~/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

If you already have some of the dotfiles present, you will see a similar error.

```
error: The following untracked working tree files would be overwritten by checkout:
 .bashrc
Please move or remove them before you switch branches.
Aborting
```

Remove or backup any collisions and repeat the checkout.

[original dotifles medium article](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049)

## Setup Dev Machine

### Install Homebrew

[homebrew installation guide](https://brew.sh)

To setup Mac with everything run the below script in your home directory:

```
brew-install-packages.sh
```

## Common Issues

### Tmux Control Space not working

Navigate to System Settings -> Keyboard Shortcuts -> Input Sources. Deselect all options.

### GVM is not installing the go version.

```
brew install go
gvm install go1.9
gvm use go1.9 --default
brew uninstall go
```

### Getting a bunch of Mason errors.

Refer to the nvim README and make sure you have everything installed.
