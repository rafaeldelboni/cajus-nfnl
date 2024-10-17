[{1 :julienvincent/nvim-paredit
  :lazy true
  :ft [:clojure :fennel :scheme :lisp]
  :config (fn []
            (let [paredit (require :nvim-paredit)]
              (paredit.setup)))}

 {1 :kylechui/nvim-surround
  :event "VeryLazy"
  :config (fn []
            (let [surround (require :nvim-surround)]
              (surround.setup)))}

 {1 :windwp/nvim-autopairs
  :event "InsertEnter"
  :opts {}}]
