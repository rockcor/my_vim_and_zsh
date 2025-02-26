return {
  "zbirenbaum/copilot-cmp",
  config = function() require("copilot_cmp").setup() end,
  opts = {
    format = {
      mode = "symbol",
      max_width = 50,
      symbol_map = { Copilot = "" },
    },
  },
}
