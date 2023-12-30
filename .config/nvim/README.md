# Ryans Neovim

## Getting Started

Make sure to remove or move your current `nvim` directory

```
git clone https://github.com/rdforte/nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

install neovim
```
brew install neovim
```

## Install ripgrep
[ripgrep repo](https://github.com/BurntSushi/ripgrep#installation) this is needed for telescope

## Install delve
full featured debugging tool for Go

[delve repo](https://github.com/go-delve/delve/tree/master)

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin


Next we need to install python support (node is optional)

- Neovim python support
install [pyenv](https://github.com/pyenv/pyenv)

- Neovim node support

  ```
  npm i -g neovim
  ```
