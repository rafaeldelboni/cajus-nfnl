-- [nfnl] Compiled from fnl/plugins/vim-jack-in.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local core = autoload("nfnl.core")
local function _2_()
  local options = {default_clj_task = "clj -Sdeps '{:deps {nrepl/nrepl {:mvn/version \"1.0.0\"} cider/cider-nrepl {:mvn/version \"0.42.1\"}}}' --main nrepl.cmdline --middleware '[\"cider.nrepl/cider-middleware\"]' \n    --interactive", default_lein_task = "update-in :dependencies conj '[nrepl,\"1.0.0\"]' -- update-in :plugins conj '[cider/cider-nrepl,\"0.28.5\"]' -- update-in '[:repl-options,:nrepl-middleware]' conj '[\"cider.nrepl/cider-middleware\"]' -- repl :headless"}
  for option, value in pairs(options) do
    core.assoc(nvim.g, option, value)
  end
  return nil
end
return {{"clojure-vim/vim-jack-in", dependencies = {"radenling/vim-dispatch-neovim", "tpope/vim-dispatch"}, lazy = true, ft = {"clojure"}, config = _2_}}
