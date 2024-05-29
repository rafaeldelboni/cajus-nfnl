return {
  {
    "folke/lazy.nvim",
    version = "*"
  },
  {
    "Olical/nfnl",
    ft = "fennel",
    init = function()
      require("config")
    end,
  },
}
