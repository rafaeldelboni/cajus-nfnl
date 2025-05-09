;symbols to show for lsp diagnostics
(vim.diagnostic.config {:signs {:text {vim.diagnostic.severity.ERROR ""
                                       vim.diagnostic.severity.WARN ""
                                       vim.diagnostic.severity.INFO ""
                                       vim.diagnostic.severity.HINT ""}}})

[{1 :neovim/nvim-lspconfig
  :config (fn []
            (let [handlers {"textDocument/publishDiagnostics"
                            (vim.lsp.with
                              vim.lsp.diagnostic.on_publish_diagnostics
                              {:severity_sort true
                               :update_in_insert true
                               :underline true
                               :virtual_text false})
                            "textDocument/hover"
                            (vim.lsp.with
                              vim.lsp.handlers.hover
                              {:border "single"})
                            "textDocument/signatureHelp"
                            (vim.lsp.with
                              vim.lsp.handlers.signature_help
                              {:border "single"})}

                  before_init (fn [params]
                                (set params.workDoneToken :1))
                  on_attach (fn [client bufnr]
                              (do
                                (vim.api.nvim_buf_set_keymap bufnr :n :gd "<Cmd>lua vim.lsp.buf.definition()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :K "<Cmd>lua vim.lsp.buf.hover()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>ld "<Cmd>lua vim.lsp.buf.declaration()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lt "<cmd>lua vim.lsp.buf.type_definition()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lh "<cmd>lua vim.lsp.buf.signature_help()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>ln "<cmd>lua vim.lsp.buf.rename()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>le "<cmd>lua vim.diagnostic.open_float()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lq "<cmd>lua vim.diagnostic.setloclist()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lf "<cmd>lua vim.lsp.buf.format()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lj "<cmd>lua vim.diagnostic.goto_next()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lk "<cmd>lua vim.diagnostic.goto_prev()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>la "<cmd>lua vim.lsp.buf.code_action()<CR>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :v :<leader>la "<cmd>lua vim.lsp.buf.range_code_action()<CR> " {:noremap true})
                                ;telescope
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lw ":lua require('telescope.builtin').diagnostics()<cr>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>lr ":lua require('telescope.builtin').lsp_references()<cr>" {:noremap true})
                                (vim.api.nvim_buf_set_keymap bufnr :n :<leader>li ":lua require('telescope.builtin').lsp_implementations()<cr>" {:noremap true})))]

              ;; For more language servers check:
              ;; https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

              (vim.lsp.config :* {:on_attach on_attach
                                  :handlers handlers
                                  :before_init before_init})

              ;; Clojure
              (vim.lsp.config :clojure_lsp {:root_dir (fn [bufnr on_dir]
                                                        (let [pattern (vim.api.nvim_buf_get_name bufnr)
                                                              util (require :lspconfig.util)
                                                              fallback (vim.loop.cwd)
                                                              patterns [:project.clj :deps.edn :build.boot :shadow-cljs.edn :.git :bb.edn]
                                                              root ((util.root_pattern patterns) pattern)]
                                                          (on_dir (or root fallback))))})
              (vim.lsp.enable :clojure_lsp)))}]
