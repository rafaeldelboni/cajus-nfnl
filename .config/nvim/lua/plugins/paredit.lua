-- [nfnl] Compiled from fnl/plugins/paredit.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local paredit = require("nvim-paredit")
  return paredit.setup()
end
local function _2_()
  local surround = require("nvim-surround")
  return surround.setup()
end
return {{"julienvincent/nvim-paredit", lazy = true, ft = {"clojure", "fennel", "scheme", "lisp"}, config = _1_}, {"kylechui/nvim-surround", event = "VeryLazy", config = _2_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}}}
