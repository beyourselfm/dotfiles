return {
	{
		"nvim-focus/focus.nvim",
		version = "*",
		config = function()
			require("focus").setup({
				command = false,
				autoresize = {
					enable = true, -- Enable or disable auto-resizing of splits
				},

				ui = {
					number = true, -- Display line numbers in the focussed window only
					relativenumber = false, -- Display relative line numbers in the focussed window only
					hybridnumber = true, -- Display hybrid line numbers in the focussed window only
					absolutenumber_unfocussed = true, -- Preserve absolute numbers in the unfocussed windows
					signcolumn = false, -- Display signcolumn in the focussed window only
					winhighlight = true, -- Auto highlighting for focussed/unfocussed windows
				},
			})
		end,
	},
}
