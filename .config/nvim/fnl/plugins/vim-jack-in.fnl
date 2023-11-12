(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))
(local core (autoload :nfnl.core))

[{1 :clojure-vim/vim-jack-in
  :dependencies [:radenling/vim-dispatch-neovim
                 :tpope/vim-dispatch]
  :lazy true
  :ft [:clojure]
  :config (fn []
            (let [options
                  {:default_clj_task "clj -Sdeps '{:deps {nrepl/nrepl {:mvn/version \"1.0.0\"} cider/cider-nrepl {:mvn/version \"0.42.1\"}}}' --main nrepl.cmdline --middleware '[\"cider.nrepl/cider-middleware\"]' \
    --interactive"
                   :default_lein_task "update-in :dependencies conj '[nrepl,\"1.0.0\"]' -- update-in :plugins conj '[cider/cider-nrepl,\"0.28.5\"]' -- update-in '[:repl-options,:nrepl-middleware]' conj '[\"cider.nrepl/cider-middleware\"]' -- repl :headless"}]
  (each [option value (pairs options)]
    (core.assoc nvim.g option value))))}]
