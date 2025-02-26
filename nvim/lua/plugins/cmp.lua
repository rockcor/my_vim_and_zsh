return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the sources part of the options table
    local lspkind = require "lspkind"
    lspkind.init()
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "copilot", priority = 1750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
      { name = "render-markdown", priority = 150 },
    }
    opts.formatting = {
      format = lspkind.cmp_format {
        mode = "symbol",
        max_width = 50,
        symbol_map = { Copilot = "" },
      },
    }
  end,
}
