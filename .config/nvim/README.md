# Ryans Neovim

## Getting Started

Make sure to remove or move your current `nvim` directory in ~/.config/nvim

install neovim
```
brew install neovim
```

there is an alias set in .zshrc for nvim so you can open a file via `nv <path>`

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

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


Next we need to install the following

__Neovim python support__
  
install [pyenv](https://github.com/pyenv/pyenv)

__Neovim Node support__
  
install [nvm](https://github.com/nvm-sh/nvm)

__Neovim Go support__
  
install [gvm](https://github.com/moovweb/gvm)

## Common Issues

#### Debug breakpoint shows letter R
This usually means that the path to the current directory is incorrect ie `develper/competitive-programming` instead of `Developer/competitive-programming`.
In this instance the case is important.

