<img src="docs/cajus-nvim.png" width="128" align="right">

# cajus-nfnl
**VERY WIP - DONT USE!**

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

> The first time you open a Fennel file under this directory you'll be prompted to trust this configuration file since it's Fennel code that's executed on your behalf. You can put any Fennel code you want in this file, just be sure to return a table of configuration at the end.

## Plugins
 - [lazy](https://github.com/folke/lazy.nvim) *A modern plugin manager for Neovim*
 - [nfnl](https://github.com/Olical/nfnl) *Enhance your Neovim with Fennel*
 - [conjure](https://github.com/Olical/conjure) *Interactive repl based evaluation for nvim*
 - [telescope](https://github.com/nvim-telescope/telescope.nvim) *Find, Filter, Preview, Pick*
 - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) *Incremental parsing system for highlighting, indentation, or folding*
 - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) *Quickstart configurations for the Nvim LSP client*
 - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) *Autocompletion plugin*
 - [github-nvim-theme](https://github.com/projekt0n/github-nvim-theme) *Github theme for Neovim*
 - [tpope-vim-sexp-bundle](https://github.com/tpope/vim-sexp-mappings-for-regular-people) *sexp mappings for regular people*
 - [lualine](https://github.com/nvim-lualine/lualine.nvim) *neovim statusline plugin written in pure lua*
 - [luasnip](https://github.com/L3MON4D3/LuaSnip) *Snippet Engine for Neovim written in Lua.*

## Files
**WIP**

## Features
Some gifs showing how it works.

### Telescope - Find Files
![telescope-find-files](docs/telescope-find-files.gif)
**`<leader>ff`**

### Lsp - Loading
![lsp-loading](docs/lsp-loading.gif)
**`on startup`**

### Lsp - Syntax check
![lsp-syntax-check](docs/lsp-syntax-check.gif)
**`<leader>le`**

### Lsp - Go to definition
![lsp-go-to-definition](docs/lsp-go-to-definition.gif)
**`gd`**

### Lsp - Document/Signature Help
![lsp-document](docs/lsp-document.gif)
**`K`/`<leader>lh`**

### Lsp - Find definition/references
![lsp-find-references](docs/lsp-find-references.gif)
**`<leader>lr`**

### Lsp - Formatting
![lsp-format](docs/lsp-format.gif)
**`<leader>lf`**

### Lsp - Code actions
![lsp-code-actions](docs/lsp-code-actions.gif)
**`<leader>la`**

### Lsp - Refactorings
![lsp-refactorings](docs/lsp-refactorings.gif)
**`<leader>la`**

### Lsp - Rename
![lsp-rename](docs/lsp-rename.gif)
**`<leader>ln`**

### Conjure - Eval
![conjure-eval](docs/conjure-eval.gif)
**`<localleader>er`**

### Conjure - Repl
![conjure-repl](docs/conjure-repl.gif)
**`<localleader>lv`**

### Conjure - Document
![conjure-document](docs/conjure-document.gif)
**`<localleader>K`**

### Completion
![auto-complete](docs/auto-complete.gif)

## Etymology
Cajus is the Portuguese for cashews, which is a fitting name because the format of its nuts reminded me of a parenthesis.

## Contributing
If you find any dead links, misinformation or any improvements in this documents at all [Emails](https://github.com/rafaeldelboni), [PRs](https://github.com/rafaeldelboni/cajus-nvim/pulls) and [Issues](https://github.com/rafaeldelboni/cajus-nvim/issues) are highly encouraged.

## License
This is free and unencumbered software released into the public domain.
For more information, please refer to <http://unlicense.org>
