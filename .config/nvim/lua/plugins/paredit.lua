-- [nfnl] Compiled from fnl/plugins/paredit.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local paredit = require("nvim-paredit")
  return paredit.setup()
end
local function _2_()
  local paredit_fnl = require("nvim-paredit-fennel")
  return paredit_fnl.setup()
end
local function _3_()
  local surround = require("nvim-surround")
  return surround.setup()
end
return {{"julienvincent/nvim-paredit", lazy = true, ft = {"clojure", "fennel"}, config = _1_}, {"julienvincent/nvim-paredit-fennel", dependencies = {"julienvincent/nvim-paredit"}, lazy = true, ft = {"fennel"}, config = _2_}, {"kylechui/nvim-surround", event = "VeryLazy", config = _3_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}}}
