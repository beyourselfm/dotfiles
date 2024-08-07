return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
			transparent = true,
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			transparent_background = true, -- disables setting the background color.
			no_italic = true,
			color_overrides = {
				mocha = {
					teal = "#C4DFDF",
					green = "#CCD3CA",
					sky = "#B4D4FF",
				},
			},
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
				lsp_saga = true,
				overseer = true,
				ufo = true,
			},
		},
	},
}
