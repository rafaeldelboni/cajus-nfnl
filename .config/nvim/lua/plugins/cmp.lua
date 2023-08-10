-- [nfnl] Compiled from fnl/plugins/cmp.fnl by https://github.com/Olical/nfnl, do not edit.
local cmp_src_menu_items = {buffer = "buff", conjure = "conj", nvim_lsp = "lsp", vsnip = "vsnp", luasnip = "lsnp"}
local cmp_srcs = {{name = "nvim_lsp"}, {name = "conjure"}, {name = "buffer"}, {name = "vsnip"}, {name = "luasnip"}}
local function has_words_before()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return ((col ~= 0) and (((vim.api.nvim_buf_get_lines(0, (line - 1), line, true))[1]):sub(col, col):match("%s") == nil))
end
local function _1_()
  local cmp = require("cmp")
  local luasnip = require("luasnip")
  local function _2_(entry, item)
    item.menu = (cmp_src_menu_items[entry.source.name] or "")
    return item
  end
  local function _3_(fallback)
    if cmp.visible() then
      return cmp.select_next_item()
    elseif luasnip.expand_or_jumpable() then
      return luasnip.expand_or_jump()
    elseif has_words_before() then
      return cmp.complete()
    elseif "else" then
      return fallback()
    else
      return nil
    end
  end
  local function _5_(fallback)
    if cmp.visible() then
      return cmp.select_prev_item()
    elseif luasnip.jumpable(-1) then
      return luasnip.jump(-1)
    elseif "else" then
      return fallback()
    else
      return nil
    end
  end
  local function _7_(args)
    return luasnip.lsp_expand(args.body)
  end
  return cmp.setup({formatting = {format = _2_}, mapping = {["<C-p>"] = cmp.mapping.select_prev_item(), ["<C-n>"] = cmp.mapping.select_next_item(), ["<C-b>"] = cmp.mapping.scroll_docs(( - 4)), ["<C-f>"] = cmp.mapping.scroll_docs(4), ["<C-Space>"] = cmp.mapping.complete(), ["<C-e>"] = cmp.mapping.close(), ["<CR>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Insert, select = true}), ["<Tab>"] = cmp.mapping(_3_, {"i", "s"}), ["<S-Tab>"] = cmp.mapping(_5_, {"i", "s"})}, snippet = {expand = _7_}, sources = cmp_srcs})
end
return {{"hrsh7th/nvim-cmp", dependencies = {"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-vsnip", "PaterJason/cmp-conjure", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip"}, config = _1_}}
