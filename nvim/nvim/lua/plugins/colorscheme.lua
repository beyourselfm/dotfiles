return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				styles = {
					transparency = true,
					italic = true,
					bold = true,
				},
				-- highlight_groups = {
				--
				-- 	Keyword = {
				-- 		fg = "#fff0f5",
				-- 	},
				-- 	-- Comment = { fg = "foam" },
				-- 	-- VertSplit = { fg = "muted", bg = "muted" },
				-- },
			})
		end,
	},
	-- ,
	--
	--
	--
}
