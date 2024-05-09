return {
	{
		"nvimdev/lspsaga.nvim",
		event = "VeryLazy",
		config = function()
			require("lspsaga").setup({
				ui = {
					code_action = "🤔",
				},
				rename = {
					keys = {
						quit = "q",
					},
				},
				finder = {
					keys = {
						toggle_or_open = "<cr>",
					},
				},
			})
		end,
		keys = {
			{
				"<leader>cf",
				"<cmd>Lspsaga finder<cr>",
				desc = "Lspsaga finder",
			},
			{

				"<leader>cI",
				"<cmd>Lspsaga incoming_calls<cr>",
				desc = "Incoming calls",
			},

			{

				"<leader>cO",
				"<cmd>Lspsaga outgoing_calls<cr>",
				desc = "Outgoing calls",
			},

			{
				"<leader>cr",
				"<cmd>Lspsaga rename<cr>",
				desc = "Rename",
			},
			{
				"K",
				"<cmd>Lspsaga hover_doc<cr>",
				silent = true,
			},
			{
				"<leader>cp",
				"<cmd>:Lspsaga peek_definition<cr>",
				desc = "Peek definition",
			},

			{
				"<leader>cP",
				"<cmd>:Lspsaga peek_type_definition<cr>",
				desc = "Peek type definition",
			},
			{
				"<leader>cs",
				"<cmd>Lspsaga outline<cr>",
				desc = "outline",
			},
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons", -- optional
		},
	},
}
