<img src="docs/cajus-nvim.png" width="128" align="right">

# cajus-nfnl
*VERY WIP - DONT USE!*

A curvy and juicy neovim configuration following the "Keep it simple!" design principle, but using [nfnl](https://github.com/Olical/nfnl) instead of [aniseed](https://github.com/Olical/nfnl).

## What is this?
Setup config to transform your NVIM in a powerful Clojure IDE using fennel, clojure-lsp and conjure.
This is simplified version on my personal [dotfiles](https://github.com/rafaeldelboni/dotfiles) setup, I highly recommend you to check it out for more advanced and updated configurations.

## Prerequisites
Things you need installed in your OS to use this setup
- [git](https://git-scm.com/downloads)
- [nvim](https://neovim.io/)
- [rg](https://github.com/BurntSushi/ripgrep)
- [clojure-lsp](https://github.com/clojure-lsp/clojure-lsp)
- [nerd-fonts](https://www.nerdfonts.com/)

## How to use

**Make sure you backup your current configuration files in `$HOME/.config/nvim` BEFORE running this.**

Run these commands in the root of this repo:
```bash
# Delete the current nvim config
rm -rf $HOME/.config/nvim

# Makes a symbolic link to the files in this repo
ln -sf $PWD/.config/nvim $HOME/.config/nvim
```
