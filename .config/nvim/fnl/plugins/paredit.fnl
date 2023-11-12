(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :julienvincent/nvim-paredit
  :lazy true
  :ft [:clojure :fennel]
  :config (fn []
            (let [paredit (require :nvim-paredit)]
              (paredit.setup {:keys {:<localleader>d [paredit.api.slurp_forwards "Slurp forwards"]
                                    :<localleader>D [paredit.api.barf_forwards "Barf forwards"]
                                    :<localleader>a [paredit.api.slurp_backwards "Slurp backwards"]
                                    :<localleader>A [paredit.api.barf_backwards "Barf backwards"]}})))}

 {1 :julienvincent/nvim-paredit-fennel
  :dependencies [:julienvincent/nvim-paredit]
  :lazy true
  :ft [:fennel]
  :config (fn []
            (let [paredit-fnl (require :nvim-paredit-fennel)]
              (paredit-fnl.setup)))}

 {1 :kylechui/nvim-surround
  :event "VeryLazy"
  :config (fn []
            (let [surround (require :nvim-surround)]
              (surround.setup)))}

 {1 :windwp/nvim-autopairs
  :event "InsertEnter"
  :opts {}}]
