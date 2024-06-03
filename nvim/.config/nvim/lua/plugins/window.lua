return {
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
}
