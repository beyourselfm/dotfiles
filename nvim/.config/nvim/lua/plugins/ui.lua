return {
	-- messages, cmdline and the popupmenu
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			table.insert(opts.routes, {
				filter = {
					event = "notify",
					find = "No information available",
				},
				opts = { skip = true },
			})
			local focused = true
			vim.api.nvim_create_autocmd("FocusGained", {
				callback = function()
					focused = true
				end,
			})
			vim.api.nvim_create_autocmd("FocusLost", {
				callback = function()
					focused = false
				end,
			})
			table.insert(opts.routes, 1, {
				filter = {
					cond = function()
						return not focused
					end,
				},
				view = "notify_send",
				opts = { stop = false },
			})

			opts.commands = {
				all = {
					-- options for the message history that you get with `:Noice`
					view = "split",
					opts = { enter = true, format = "details" },
					filter = {},
				},
			}

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "markdown",
				callback = function(event)
					vim.schedule(function()
						require("noice.text.markdown").keys(event.buf)
					end)
				end,
			})

			opts.presets.lsp_doc_border = true
		end,
	},

	{
		"rcarriga/nvim-notify",
		timeout = 5000,
		opts = {
			background_colour = "#000000",
		},
	},

	-- animations
	{
		"echasnovski/mini.animate",
		enable = false,
		opts = function(_, opts)
			opts.open = {
				enable = false,
			}
			opts.close = {
				enable = false,
			}
		end,
	},

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
		event = "VimEnter",
		opts = function(_, opts)
			local logo = [[
  ▄▄▄▄    ▓█████    ▓██   ██▓ ▒█████   █    ██  ██▀███    ██████  ▓█████  ██▓    ▒ ████▒
 ▓█████▄  ▓█   ▀     ▒██  ██▒▒██▒  ██▒ ██  ▓██▒▓██ ▒ ██▒▒██    ▒  ▓█   ▀ ▓██▒   ▒▓██    
 ▒██▒ ▄██ ▒███        ▒██ ██░▒██░  ██▒▓██  ▒██░▓██ ░▄█ ▒░ ▓██▄    ▒███   ▒██░   ░▒████  
 ▒██░█▀   ▒▓█  ▄      ░ ▐██▓░▒██   ██░▓▓█  ░██░▒██▀▀█▄    ▒   ██▒ ▒▓█  ▄ ▒██░   ░░▓█▒   
▒░▓█  ▀█▓▒░▒████      ░ ██▒▓░░ ████▓▒░▒▒█████▓ ░██▓ ▒██▒▒██████▒▒▒░▒████▒░██████ ░▒█░   
░░▒▓███▀▒░░░ ▒░        ██▒▒▒ ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░░░░ ▒░ ░░ ▒░▓    ▒ ░   
░▒░▒   ░ ░ ░ ░       ▓██ ░▒░   ░ ▒ ▒░ ░░▒░ ░ ░   ░▒ ░ ▒ ░ ░▒  ░ ░░ ░ ░  ░░ ░ ▒    ░     
  ░    ░     ░       ▒ ▒ ░░  ░ ░ ░ ▒   ░░░ ░ ░   ░░   ░ ░  ░  ░      ░     ░ ░    ░ ░   
░ ░      ░   ░       ░ ░         ░ ░     ░        ░           ░  ░   ░  ░    ░          
      ]]
			logo = string.rep("\n", 4) .. logo .. "\n\n"
			opts.config.header = vim.split(logo, "\n")
			opts.config.center = {
				-- {
				-- 	action = LazyVim.pick.telescope("files"),
				-- 	desc = " Find file",
				-- 	icon = " ",
				-- 	key = "f",
				-- },
				{
					action = "ene | startinsert",
					desc = " New file",
					icon = " ",
					key = "n",
				},
				{
					action = "Telescope oldfiles",
					desc = " Recent files",
					icon = " ",
					key = "r",
				},
				{
					action = "qa",
					desc = " Quit",
					icon = " ",
					key = "q",
				},
			}
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		init = function()
			vim.g.lualine_laststatus = vim.o.laststatus
			if vim.fn.argc(-1) > 0 then
				-- set an empty statusline till lualine loads
				vim.o.statusline = " "
			else
				-- hide the statusline on the starter page
				vim.o.laststatus = 0
			end
		end,
		opts = function()
			-- PERF: we don't need this lualine require madness 🤷
			local lualine_require = require("lualine_require")
			lualine_require.require = require

			local icons = require("lazyvim.config").icons

			vim.o.laststatus = vim.g.lualine_laststatus

			return {
				options = {
					theme = "auto",
					globalstatus = true,
					disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },

					lualine_c = {
						LazyVim.lualine.root_dir(),
						{
							"diagnostics",
							symbols = {
								error = icons.diagnostics.Error,
								warn = icons.diagnostics.Warn,
								info = icons.diagnostics.Info,
								hint = icons.diagnostics.Hint,
							},
						},
						{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
						-- { LazyVim.lualine.pretty_path() },
					},
					lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = LazyVim.ui.fg("Statement"),
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = LazyVim.ui.fg("Constant"),
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = LazyVim.ui.fg("Debug"),
          },
						{
							require("lazy.status").updates,
							cond = require("lazy.status").has_updates,
							color = LazyVim.ui.fg("Special"),
						},
						{
							"diff",
							symbols = {
								added = icons.git.added,
								modified = icons.git.modified,
								removed = icons.git.removed,
							},
							source = function()
								local gitsigns = vim.b.gitsigns_status_dict
								if gitsigns then
									return {
										added = gitsigns.added,
										modified = gitsigns.changed,
										removed = gitsigns.removed,
									}
								end
							end,
						},
						{
							"overseer",
						},
					},
					lualine_y = {
						{ "progress", separator = " ", padding = { left = 1, right = 0 } },
						{ "location", padding = { left = 0, right = 1 } },
					},
					lualine_z = {
						function()
							return " " .. os.date("%R")
						end,
					},
				},
				-- extensions = { "neo-tree", "lazy" },
			}
		end,
	},
}
