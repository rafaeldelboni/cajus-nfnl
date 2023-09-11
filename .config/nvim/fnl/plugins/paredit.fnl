(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :julienvincent/nvim-paredit
  :lazy true
  :ft [:clojure :fennel]
  :config (fn []
            (let [paredit (require :nvim-paredit)]
              (paredit.setup)))
  }]
