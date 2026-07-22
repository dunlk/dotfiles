vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#43de76", bold = true })

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function(_, opts)
    local logo = [[
       ██████╗ ██╗   ██╗███╗   ██╗██╗  ██╗   ██████╗ ███████╗██╗   ██╗
       ██╔══██╗██║   ██║████╗  ██║██║ ██╔╝   ██╔══██╗██╔════╝██║   ██║
       ██║  ██║██║   ██║██╔██╗ ██║█████╔╝    ██║  ██║█████╗  ██║   ██║
       ██║  ██║██║   ██║██║╚██╗██║██╔═██╗    ██║  ██║██╔══╝  ╚██╗ ██╔╝
      ██████╔╝╚██████╔╝██║ ╚████║██║  ██╗██╗██████╔╝███████╗ ╚████╔╝
      ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝  ╚═══╝
     Software Developer · Frontend & Backend · APIs REST · Databases · Clean Code
     Full Stack Developer · REST APIs · Databases
     It's not magic, it's code
    ]]

    -- local logo = [[
    --  ███╗   ███╗██╗██╗  ████████╗ ██████╗ ███╗   ██╗   ██████╗ ███████╗██╗   ██╗
    --  ████╗ ████║██║██║  ╚══██╔══╝██╔═══██╗████╗  ██║   ██╔══██╗██╔════╝██║   ██║
    --  ██╔████╔██║██║██║     ██║   ██║   ██║██╔██╗ ██║   ██║  ██║█████╗  ██║   ██║
    --  ██║╚██╔╝██║██║██║     ██║   ██║   ██║██║╚██╗██║   ██║  ██║██╔══╝  ╚██╗ ██╔╝
    --  ██║ ╚═╝ ██║██║███████╗██║   ╚██████╔╝██║ ╚████║██╗██████╔╝███████╗ ╚████╔╝
    --   ╚═╝     ╚═╝╚═╝╚══════╝╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═════╝ ╚══════╝  ╚═══╝
    --  Full Stack Developer · REST APIs · Databases
    --  milton.yv.dev@gmail.com
    -- ]]
    logo = string.rep("\n", 8) .. logo .. "\n\n"
    opts.config.header = vim.split(logo, "\n")
  end,
}
