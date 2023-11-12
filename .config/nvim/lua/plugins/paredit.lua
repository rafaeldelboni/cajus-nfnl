-- [nfnl] Compiled from fnl/plugins/paredit.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local paredit = require("nvim-paredit")
  return paredit.setup({keys = {["<localleader>d"] = {paredit.api.slurp_forwards, "Slurp forwards"}, ["<localleader>D"] = {paredit.api.barf_forwards, "Barf forwards"}, ["<localleader>a"] = {paredit.api.slurp_backwards, "Slurp backwards"}, ["<localleader>A"] = {paredit.api.barf_backwards, "Barf backwards"}}})
end
local function _3_()
  local paredit_fnl = require("nvim-paredit-fennel")
  return paredit_fnl.setup()
end
local function _4_()
  local surround = require("nvim-surround")
  return surround.setup()
end
return {{"julienvincent/nvim-paredit", lazy = true, ft = {"clojure", "fennel"}, config = _2_}, {"julienvincent/nvim-paredit-fennel", dependencies = {"julienvincent/nvim-paredit"}, lazy = true, ft = {"fennel"}, config = _3_}, {"kylechui/nvim-surround", event = "VeryLazy", config = _4_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}}}
