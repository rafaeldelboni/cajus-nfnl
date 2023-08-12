(local {: autoload} (require :nfnl.module))
(local lsp (autoload :config.lsp))

(fn lsp_connection []
  (let [message (lsp.get-progress-message)]
    (if
      (or (= message.status "begin")
          (= message.status "report")) (.. message.msg " : " message.percent "%% ")
      (= message.status "end") ""
      "")))

(lsp_connection)

[{1 :nvim-lualine/lualine.nvim
  :config (fn []
            (let [lualine (require :lualine)]
              (lualine.setup
                {:options {:theme "tokyonight"
                           :icons_enabled true
                           :section_separators ["" ""]
                           :component_separators ["" ""]}
                 :sections {:lualine_a []
                            :lualine_b [[:mode {:upper true}]]
                            :lualine_c [["FugitiveHead"]
                                        {1 :filename
                                         :file_status true
                                         :path 1
                                         :shorting_target 40}]
                            :lualine_x [{1 :diagnostics
                                         :sections [:error :warn :info :hint]
                                         :sources [:nvim_lsp]}
                                        [lsp_connection]
                                        :location
                                        :filetype]
                            :lualine_y [:encoding]
                            :lualine_z []}
                 :inactive_sections {:lualine_a []
                                     :lualine_b []
                                     :lualine_c [{1 :filename
                                                  :file_status true
                                                  :path 1}]
                                     :lualine_x []
                                     :lualine_y []
                                     :lualine_z []}})))}]
