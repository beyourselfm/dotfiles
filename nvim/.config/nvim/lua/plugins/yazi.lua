return {
	---@type LazySpec
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			-- 👇 in this section, choose your own keymappings!
			{
				"-",
				function()
					require("yazi").yazi()
				end,
				desc = "Yazi",
			},
			{
				"<c-up>",
				function()
					-- NOTE: requires a version of yazi that includes
					-- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
					require("yazi").toggle()
				end,
				desc = "Resume the last yazi session",
			},
		},
		---@type YaziConfig
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = false,

			floating_window_scaling_factor = 0.8,
			yazi_floating_window_winblend = 0,

			yazi_floating_window_border = "double",

			-- enable these if you are using the latest version of yazi
			-- use_ya_for_events_reading = true,
			-- use_yazi_client_id_flag = true,
		},
	},
}
