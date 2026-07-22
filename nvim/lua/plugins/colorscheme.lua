return {
  "olimorris/onedarkpro.nvim",
  priority = 1002,
  opts = {
    options = {
      transparency = true,
    },
    -- es un comentario
    styles = {
      comments = "italic",
      keywords = "italic",
      functions = "bold, italic",
      methods = "italic",
      parameters = "italic",
      variables = "NONE",
      types = "bold",
      strings = "NONE",
      numbers = "NONE",
      constants = "NONE",
      operators = "NONE",
      conditionals = "italic",
      virtual_text = "NONE",
    },

    highlights = {
      -- Keyword = { italic = true, bold = true },
      -- Conditional = { italic = true },
      -- Statement = { italic = true },
      -- Include = { italic = true },
      -- Define = { italic = true },
      -- Function = { italic = true },
      -- Identifier = { italic = false },
      ["@keyword.import"] = { fg = "#c680dd", italic = true },
      ["@keyword"] = { fg = "#c680dd", italic = true },
      ["@operator"] = {
        -- fg = "#36E06C", -- el color que quieras
        fg = "#c680dd", -- el color que quieras
        -- bold = true,
      },
      ["@operator.rust"] = {
        fg = "#c680dd",
        bold = true,
      },
      ["@punctuation.delimiter.rust"] = {
        fg = "#c680dd",
      },
    },
  },
}

-- return {
--   "craftzdog/solarized-osaka.nvim",
--   lazy = true,
--   priority = 1002,
--   opts = function()
--     return {
--
--       transparent = true,
--     }
--   end,
-- }
