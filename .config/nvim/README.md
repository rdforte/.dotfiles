This is my personal Neovim setup that I use for Go development. It includes a bunch of plugins and configurations that I have found useful.
It is quite a minimal setup with the bare essentials needed for Go development.

[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.10-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)

[Common Commands](#common-commands)

[Setup / Getting Started](#setup--getting-started)

[Command cheat sheet](#command-cheat-sheet)

[Common issues](#common-issues)

## Common Commands

`:Lazy` for checking nvim plugins

`:Mason` for checking mason packages (LSP)

`:checkhealth` for checking health of neovim packages and seeing what needs fixing, packages need installing.

`:so %` sources the current file changes

`:LspInfo` shows the status of active and configured language servers

## Setup / Getting Started

install neovim

```
brew install neovim
```

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

### Fonts

```
brew alfred
brew install --cask font-jetbrains-mono-nerd-font
```

### Install ripgrep

[ripgrep repo](https://github.com/BurntSushi/ripgrep#installation) this is needed for telescope

```
brew install ripgrep
```

### Install delve

full featured debugging tool for Go

[delve repo](https://github.com/go-delve/delve/tree/master)

```
brew install delve
```

### Install python

install [pyenv](https://github.com/pyenv/pyenv)

```
brew install pyenv
```

### Install node

install [nvm](https://github.com/nvm-sh/nvm)

### Install Go

install [gvm](https://github.com/moovweb/gvm)

### Github copilot

to login to copilot

```
:Copilot setup
```

for more options

```
:copilot help
```

## Language Servers

**Make sure to install the language servers for the languages you are using**

- [gopls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#gopls)
- [ts_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ts_ls)
- [lua_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls)
- [cssls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#cssls)
- [html](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#html)

## Common Issues

#### Debug breakpoint shows letter R

This usually means that the path to the current directory is incorrect ie `develper/competitive-programming` instead of `Developer/competitive-programming`.
In this instance the case is important.

#### LSP support is broken for latest language version

For example: updating to Go version 1.22 broke LSP support. To fix this, you need to update the LSP server. To do this,
run the below command:

```
:Mason
```

Then run `U` to update mason packages.
