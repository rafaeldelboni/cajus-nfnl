(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))
(local core (autoload :nfnl.core))

;generic mapping leaders configuration
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

;sets a nvim global options
(let [options
       {;tabs is space
        :expandtab true
        ;tab/indent size
        :tabstop 2
        :shiftwidth 2
        :softtabstop 2
        ;settings needed for compe autocompletion
        :completeopt "menuone,noselect"
        ;case insensitive search
        :ignorecase true
        ;smart search case
        :smartcase true
        ;shared clipboard with linux
        :clipboard "unnamedplus"}]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))

{}
