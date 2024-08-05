return {
	{
		"simrat39/symbols-outline.nvim",
		enabled = false,
	},

	{
		"smjonas/inc-rename.nvim",
		enabled = false,
	},

	{
		"digitaltoad/vim-pug",
	},
	{
		"wavded/vim-stylus",
	},
	{
		"christoomey/vim-tmux-navigator",
	},
	{
		"chrisgrieser/nvim-spider",
		lazy = true,
		keys = {
			{

				"w",
				"<cmd>lua require('spider').motion('w')<CR>",
				desc = "Spider-w",
				mode = { "n", "o", "x" },
			},
			{
				"e",
				"<cmd>lua require('spider').motion('e')<CR>",
				desc = "Spider-e",
				mode = { "n", "o", "x" },
			},
			{
				"b",
				"<cmd>lua require('spider').motion('b')<CR>",
				desc = "Spider-b",
				mode = { "n", "o", "x" },
			},
		},
	},

	{
		"tikhomirov/vim-glsl",
	},
	{
		"timtro/glslView-nvim",
	},

	{
		"keaising/im-select.nvim",
		config = function()
			require("im_select").setup({})
		end,
	},

	{
		version = "*",
		"nvim-focus/focus.nvim",
		config = function()
			require("focus").setup({
				command = false,
				autoresize = {
					enable = true, -- Enable or disable auto-resizing of splits
				},
				ui = {
					number = false, -- Display line numbers in the focussed window only
					cursorline = false, -- Display a cursorline in the focussed window only
					relativenumber = false, -- Display relative line numbers in the focussed window only
					hybridnumber = false, -- Display hybrid line numbers in the focussed window only
					absolutenumber_unfocussed = false, -- Preserve absolute numbers in the unfocussed windows
					signcolumn = false, -- Display signcolumn in the focussed window only
					winhighlight = false, -- Auto highlighting for focussed/unfocussed windows
				},
			})
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		enabled = false,
	},
	{
		"Wansmer/treesj",
		keys = { "<space>ch", "<space>cj", "<space>ck" },
		dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
		config = function()
			require("treesj").setup({--[[ your config ]]
			})
		end,
	},
}
