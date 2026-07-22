return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPost", "BufNewFile" },

    init = function()
      local rainbow = require("rainbow-delimiters")

      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = rainbow.strategy["global"],
        },
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        highlight = {
          "RainbowDelimiterOrange",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
          "RainbowDelimiterRed",
          "RainbowDelimiterViolet",
          "RainbowDelimiterRed",
          "RainbowDelimiterCyan",
        },
      }
    end,

    config = function()
      local function set_rainbow_colors()
        vim.api.nvim_set_hl(0, "RainbowDelimiterRed", {
          fg = "#e06c75",
          bold = true,
        })

        vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", {
          fg = "#d19a66",
          bold = true,
        })

        vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", {
          fg = "#c678dd",
          bold = true,
        })

        vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", {
          fg = "#56b6c2",
          bold = true,
        })
      end

      set_rainbow_colors()

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_rainbow_colors,
      })
    end,
  },
}
