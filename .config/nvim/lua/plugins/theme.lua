-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local theme = require("tokyonight")
  local theme_util = require("tokyonight.util")
  local function _3_(colors)
    colors.bg_statusline = theme_util.darken(colors.bg_dark, 0.5)
    return nil
  end
  local function _4_(highlight, colors)
    highlight.String = {fg = colors.green2}
    highlight.TelescopeNormal = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.TelescopeBorder = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NvimTreeNormal = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NvimTreeNormalNC = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NvimTreeWinSeparator = {bg = colors.bg_statusline, fg = colors.bg_dark}
    highlight.FloatBorder = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.ColorColumn = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.Pmenu = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NonText = {fg = theme_util.lighten(colors.bg, 0.9)}
    return nil
  end
  theme.setup({style = "night", styles = {comments = {italic = true}, floats = "dark", functions = {}, keywords = {italic = true}, sidebars = "dark", variables = {}}, on_colors = _3_, on_highlights = _4_, terminal_colors = true})
  return vim.cmd("colorscheme tokyonight")
end
return {{"folke/tokyonight.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _2_, lazy = false}}
