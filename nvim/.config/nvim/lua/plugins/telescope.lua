return {
	{
		"telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = {
			{
				"<leader>fP",
				function()
					require("telescope.builtin").find_files({
						cwd = require("lazy.core.config").options.root,
					})
				end,
				desc = "Find Plugin File",
			},
			{
				";f",
				function()
					local builtin = require("telescope.builtin")
					builtin.find_files({
						no_ignore = false,
						hidden = true,
					})
				end,
				desc = "Files",
			},
			{
				";r",
				function()
					local builtin = require("telescope.builtin")
					builtin.live_grep({
						additional_args = { "--hidden" },
					})
				end,
				desc = "Greps",
			},
			{
				"\\\\",
				function()
					local builtin = require("telescope.builtin")
					builtin.buffers()
				end,
				desc = "Buffers",
			},
			{
				";o",
				function()
					local builtin = require("telescope.builtin")
					builtin.oldfiles()
				end,
				desc = "Recents",
			},
			{
				";t",
				function()
					local builtin = require("telescope.builtin")
					builtin.help_tags()
				end,
				desc = "Helps",
			},

			{
				";c",
				"<cmd>Telescope registers<cr>",
				desc = "Regiters",
			},
			{
				";b",
				"<cmd>Telescope jumplist<cr>",
				desc = "Buffers",
			},

			{
				";;",
				function()
					local builtin = require("telescope.builtin")
					builtin.resume()
				end,
				desc = "Run Last commands",
			},
			{
				";e",
				function()
					local builtin = require("telescope.builtin")
					builtin.diagnostics()
				end,
				desc = "Errors",
			},
			-- {
			-- 	"sf",
			-- 	function()
			-- 		local telescope = require("telescope")
			--
			-- 		local function telescope_buffer_dir()
			-- 			return vim.fn.expand("%:p:h")
			-- 		end
			--
			-- 		telescope.extensions.file_browser.file_browser({
			-- 			path = "%:p:h",
			-- 			cwd = telescope_buffer_dir(),
			-- 			respect_gitignore = false,
			-- 			hidden = true,
			-- 			grouped = true,
			-- 			previewer = true,
			-- 			initial_mode = "normal",
			-- 			layout_config = { height = 40 },
			-- 		})
			-- 	end,
			-- 	desc = "File Browser",
			-- },
		},
		config = function(_, opts)
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local fb_actions = require("telescope").extensions.file_browser.actions

			opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
				wrap_results = true,
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "top" },
				sorting_strategy = "ascending",
				winblend = 0,
				mappings = {
					n = {},
				},
				file_ignore_patterns = {
					"^node_modules/",
					"^.git/",
					".cache",
					"^vendor",
					"yarn.lock",
					"package-lock.json",
					"pnpm-lock.yaml",
					"lazy-lock.json",
					".history",
				},
			})
			opts.pickers = {
				diagnostics = {
					theme = "dropdown",
					initial_mode = "normal",
					layout_config = {
						preview_cutoff = 9999,
					},
				},
			}
			opts.extensions = {
				-- file_browser = {
				-- 	theme = "dropdown",
				-- 	-- disables netrw and use telescope-file-browser in its place
				-- 	hijack_netrw = true,
				-- 	mappings = {
				-- 		-- your custom insert mode mappings
				-- 		["n"] = {
				-- 			-- your custom normal mode mappings
				-- 			["-"] = fb_actions.goto_parent_dir,
				-- 			["/"] = function()
				-- 				vim.cmd("startinsert")
				-- 			end,
				-- 			["<C-u>"] = function(prompt_bufnr)
				-- 				for i = 1, 10 do
				-- 					actions.move_selection_previous(prompt_bufnr)
				-- 				end
				-- 			end,
				-- 			["<C-d>"] = function(prompt_bufnr)
				-- 				for i = 1, 10 do
				-- 					actions.move_selection_next(prompt_bufnr)
				-- 				end
				-- 			end,
				-- 		},
				-- 	},
				-- },
			}
			telescope.setup(opts)
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("file_browser")
		end,
	},
}
