return {
	{
		"nvim-lualine/lualine.nvim",

		opts = function(_, opts)
			local colors = {
				bg0 = "#071a2b",
				bg1 = "#10233a",
				bg2 = "#18304a",
				bg3 = "#24405f",

				fg = "#d8e8ff",
				muted = "#9cb7d9",

				orange = "#f5a43a",
				green = "#9be64c",
				blue = "#7dc4ff",
				cyan = "#66d9ef",

				red = "#f16d4f",
				yellow = "#ffd166",
				purple = "#b388ff",
			}

			local theme = {
				normal = {
					a = {
						fg = colors.bg0,
						bg = colors.orange,
						gui = "bold",
					},
					b = {
						fg = colors.bg0,
						bg = colors.green,
						gui = "bold",
					},
					c = {
						fg = colors.muted,
						bg = colors.bg1,
					},
				},

				insert = {
					a = {
						fg = colors.bg0,
						bg = colors.green,
						gui = "bold",
					},
					b = {
						fg = colors.bg0,
						bg = colors.orange,
						gui = "bold",
					},
				},

				visual = {
					a = {
						fg = colors.bg0,
						bg = colors.purple,
						gui = "bold",
					},
					b = {
						fg = colors.fg,
						bg = colors.bg2,
					},
				},

				replace = {
					a = {
						fg = colors.bg0,
						bg = colors.red,
						gui = "bold",
					},
					b = {
						fg = colors.fg,
						bg = colors.bg2,
					},
				},

				command = {
					a = {
						fg = colors.bg0,
						bg = colors.yellow,
						gui = "bold",
					},
					b = {
						fg = colors.bg0,
						bg = colors.orange,
					},
				},

				inactive = {
					a = {
						fg = colors.muted,
						bg = colors.bg1,
					},
					b = {
						fg = colors.muted,
						bg = colors.bg1,
					},
					c = {
						fg = colors.muted,
						bg = colors.bg0,
					},
				},
			}

			opts.options = opts.options or {}

			opts.options.theme = theme

			opts.options.component_separators = {
				left = "",
				right = "",
			}

			opts.options.section_separators = {
				left = "",
				right = "",
			}

			opts.options.globalstatus = true
			opts.options.disabled_filetypes = {
				statusline = {
					"dashboard",
					"alpha",
					"starter",
				},
			}

			opts.sections = {
				lualine_a = {
					{
						"mode",
						icon = "",
						separator = {
							left = "",
							right = "",
						},
					},
				},

				lualine_b = {
					{
						"branch",
						icon = "",
					},
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
				},

				lualine_c = {
					{
						"filename",
						path = 1,
						symbols = {
							modified = " ●",
							readonly = " ",
							unnamed = "[Sin nombre]",
							newfile = "[Nuevo]",
						},
					},
				},

				lualine_x = {
					{
						"diagnostics",
						sources = {
							"nvim_diagnostic",
						},
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = "󰌵 ",
						},
					},
					{
						"encoding",
					},
					{
						"fileformat",
					},
					{
						"filetype",
						icon_only = false,
					},
				},

				lualine_y = {
					{
						"progress",
					},
				},

				lualine_z = {
					{
						"location",
						icon = "",
						separator = {
							left = "",
							right = "",
						},
					},
				},
			}

			opts.inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = {
					"location",
				},
				lualine_y = {},
				lualine_z = {},
			}

			return opts
		end,
	},
}
