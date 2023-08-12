(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :guns/vim-sexp
  :dependencies [:tpope/vim-sexp-mappings-for-regular-people
                 :tpope/vim-repeat
                 :tpope/vim-surround]
  :lazy true
  :ft [:clojure :scheme :lisp :timl :fennel :janet]
  :init (fn []
          (set nvim.g.sexp_filetypes "clojure,scheme,lisp,timl,fennel,janet"))}]
