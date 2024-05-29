-- [nfnl] Compiled from fnl/plugins/telescope.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  vim.keymap.set("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>", {noremap = true})
  vim.keymap.set("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
  vim.keymap.set("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>", {noremap = true})
  return vim.keymap.set("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
end
local function _2_()
  local telescope = require("telescope")
  local themes = require("telescope.themes")
  telescope.setup({defaults = {file_ignore_patterns = {"node_modules"}, vimgrep_arguments = {"rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case", "--iglob", "!.git", "--hidden"}}, extensions = {["ui-select"] = {themes.get_dropdown({})}}, pickers = {find_files = {find_command = {"rg", "--files", "--iglob", "!.git", "--hidden"}}}})
  return telescope.load_extension("ui-select")
end
return {{"nvim-telescope/telescope.nvim", dependencies = {"nvim-telescope/telescope-ui-select.nvim", "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"}, init = _1_, config = _2_}}
