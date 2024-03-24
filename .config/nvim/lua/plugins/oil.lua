return {
	{
		"stevearc/oil.nvim",
		opts = {
			delete_to_trash = true,
			keymaps = {
				["q"] = "actions.close",
				["<C-s>"] = "actions.save",
			},
			view_options = {
				show_hidden = true,
			},
		},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
