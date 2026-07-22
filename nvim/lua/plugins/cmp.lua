-- ~/.config/nvim/lua/plugins/cmp.lua

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.enabled = function()
      local context = require("cmp.config.context")

      -- Deshabilitar en comentarios
      if context.in_treesitter_capture("comment") == true or context.in_syntax_group("Comment") then
        return false
      end

      return true
    end

    return opts
  end,
}
