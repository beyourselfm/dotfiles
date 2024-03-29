return {
	{
		"stevearc/oil.nvim",
		opts = {

			keymaps = {
				["<ESC>"] = "actions.close",
				["<C-s>"] = "actions.save",
			},
			view_options = {
				show_hidden = true,
			},
		},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = true,
		keys = {
			{
				"so",
				function()
					require("oil").open_float()
				end,
				silent = true,
			},
		},
	},
}
