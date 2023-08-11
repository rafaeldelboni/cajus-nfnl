return {
  {
    "folke/lazy.nvim",
    version = "*"
  },
  {
    "Olical/nfnl",
    ft = "fennel",
    dependencies = { "norcalli/nvim.lua" },
    init = function()
      require("config")
    end,
  },
}
