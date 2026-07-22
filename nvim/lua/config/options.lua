-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- return {
--   "nvimdev/dashboard-nvim",
--   event = "VimEnter",
--   opts = function(_, opts)
--     local logo = [[
--       ██████╗ ██╗   ██╗███╗   ██╗██╗  ██╗
--       ██╔══██╗██║   ██║████╗  ██║██║ ██╔╝
--       ██║  ██║██║   ██║██╔██╗ ██║█████╔╝
--       ██║  ██║██║   ██║██║╚██╗██║██╔═██╗
--       ██████╔╝╚██████╔╝██║ ╚████║██║  ██╗
--       ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝
--     ]]
--
--     logo = string.rep("\n", 8) .. logo .. "\n\n"
--     opts.config.header = vim.split(logo, "\n")
--   end,
-- }
--
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Cs = "\e[4:0m"]])

vim.api.nvim_set_hl(0, "Visual", {
  reverse = true,
})

vim.opt.backup = false
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitkeep = "cursor"
vim.opt.formatoptions:append({ "r" })
vim.g.lazyvim_cmp = "blink.cmp"
vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#E06C75" })
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#E5C07B" })
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#61AFEF" })
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#D19A66" })
vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#98C379" })
vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#C678DD" })
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#56B6C2" })
