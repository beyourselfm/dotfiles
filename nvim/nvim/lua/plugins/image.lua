return {
	{
		"adelarsq/image_preview.nvim",
		event = "VeryLazy",
		config = function()
			require("image_preview").setup({
				window = {
					mappings = {
						["<leader>ip"] = "image_wezterm",
					},
				},
			})
		end,
	},
}
