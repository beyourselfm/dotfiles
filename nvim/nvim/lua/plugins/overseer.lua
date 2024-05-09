return {
	{
		"stevearc/overseer.nvim",
		opts = {
			task_list = {
				bindings = {
					["<C-l>"] = false,
					["<C-h>"] = false,
				},
			},
		},
		keys = {
			{
				"<leader>oc",
				"<cmd>OverseerClose<cr>",
				desc = "Overseer Close",
			},
			{
				"<leader>oi",
				"<cmd>OverseerInfo<cr>",
				desc = "Overseer Info",
			},
			{
				"<leader>or",
				"<cmd>OverseerRun<cr>",
				desc = "Overseer Run",
			},
			{
				"<leader>ot",
				"<cmd>OverseerToggle<cr>",
				desc = "Overseer Toggle",
			},
		},
	},
}
