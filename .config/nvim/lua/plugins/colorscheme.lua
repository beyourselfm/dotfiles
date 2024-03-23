return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},

				no_underline = true, -- Force no underline
				no_italic = true, -- Force no italic
			}
		end,
	},
}
