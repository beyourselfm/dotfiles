return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				dark_variant = "moon",
				styles = {
					italic = false,
					transparency = true,
				},
			}
		end,
	},
}
