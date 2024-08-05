return {
	{
		"rcarriga/nvim-notify",
		timeout = 5000,
		opts = {
			background_colour = "#000000",
		},
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			routes = {
				{
					filter = {
						event = "notify",
						find = "No information available",
					},
					opts = {
						skip = true,
					},
				},
			},
		},
	},

	-- animations
	-- {
	-- 	"echasnovski/mini.animate",
	-- 	enable = false,
	-- 	opts = function(_, opts)
	-- 		opts.resize = {
	-- 			enable = false,
	-- 		}
	-- 		opts.open = {
	-- 			enable = false,
	-- 		}
	-- 		opts.close = {
	-- 			enable = false,
	-- 		}
	-- 	end,
	-- },

	-- buffer line
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {
			{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
			{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
		},
		opts = {
			options = {
				mode = "tabs",
				-- separator_style = "slant",
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		},
	},
	{
		"nvimdev/dashboard-nvim",
		enabled = false,

		-- event = "VimEnter",
		-- opts = function(_, opts)
		-- 	local logo = [[
		--   ▄▄▄▄    ▓█████    ▓██   ██▓ ▒█████   █    ██  ██▀███    ██████  ▓█████  ██▓    ▒ ████▒
		--  ▓█████▄  ▓█   ▀     ▒██  ██▒▒██▒  ██▒ ██  ▓██▒▓██ ▒ ██▒▒██    ▒  ▓█   ▀ ▓██▒   ▒▓██
		--  ▒██▒ ▄██ ▒███        ▒██ ██░▒██░  ██▒▓██  ▒██░▓██ ░▄█ ▒░ ▓██▄    ▒███   ▒██░   ░▒████
		--  ▒██░█▀   ▒▓█  ▄      ░ ▐██▓░▒██   ██░▓▓█  ░██░▒██▀▀█▄    ▒   ██▒ ▒▓█  ▄ ▒██░   ░░▓█▒
		-- ▒░▓█  ▀█▓▒░▒████      ░ ██▒▓░░ ████▓▒░▒▒█████▓ ░██▓ ▒██▒▒██████▒▒▒░▒████▒░██████ ░▒█░
		-- ░░▒▓███▀▒░░░ ▒░        ██▒▒▒ ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░░░░ ▒░ ░░ ▒░▓    ▒ ░
		-- ░▒░▒   ░ ░ ░ ░       ▓██ ░▒░   ░ ▒ ▒░ ░░▒░ ░ ░   ░▒ ░ ▒ ░ ░▒  ░ ░░ ░ ░  ░░ ░ ▒    ░
		--   ░    ░     ░       ▒ ▒ ░░  ░ ░ ░ ▒   ░░░ ░ ░   ░░   ░ ░  ░  ░      ░     ░ ░    ░ ░
		-- ░ ░      ░   ░       ░ ░         ░ ░     ░        ░           ░  ░   ░  ░    ░
		--       ]]
		-- 	logo = string.rep("\n", 4) .. logo .. "\n\n"
		-- 	opts.config.header = vim.split(logo, "\n")
		-- 	opts.config.center = {
		-- 		-- {
		-- 		-- 	action = LazyVim.pick.telescope("files"),
		-- 		-- 	desc = " Find file",
		-- 		-- 	icon = " ",
		-- 		-- 	key = "f",
		-- 		-- },
		-- 		{
		-- 			action = "ene | startinsert",
		-- 			desc = " New file",
		-- 			icon = " ",
		-- 			key = "n",
		-- 		},
		-- 		{
		-- 			action = "Telescope oldfiles",
		-- 			desc = " Recent files",
		-- 			icon = " ",
		-- 			key = "r",
		-- 		},
		-- 		{
		-- 			action = "qa",
		-- 			desc = " Quit",
		-- 			icon = " ",
		-- 			key = "q",
		-- 		},
		-- 	}
		-- end,
	},
}
