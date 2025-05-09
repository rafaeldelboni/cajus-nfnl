[{1 :saghen/blink.compat
  :version "*"
  :lazy true}

 {1 :saghen/blink.cmp
  :version "*"
  :lazy false

  :dependencies [:rafamadriz/friendly-snippets
                 :PaterJason/cmp-conjure
                 :mikavilpas/blink-ripgrep.nvim
                 :L3MON4D3/LuaSnip]

  :opts {:keymap {:preset :enter
                  :<Tab> [:select_next :fallback]}

         :appearance {:use_nvim_cmp_as_default true
                      :nerd_font_variant :mono}

         :completion {:ghost_text {:enabled true}
                      :menu {:draw {:columns [[:kind_icon]
                                              {1 :label
                                               2 :label_description
                                               :gap 1}
                                              [:source_name]]}}}

         :snippets {:preset :luasnip}

         :cmdline {:enabled false}

         :sources {:default [:lsp :path :snippets :buffer :conjure :ripgrep]
                   :providers {:conjure {:name :conjure
                                         :module :blink.compat.source
                                         :score_offset -3}
                               :ripgrep {:module :blink-ripgrep
                                         :name :Ripgrep
                                         :score_offset -3}}}}}]
