local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit ")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- window
keymap.set("n", "<leader>wo", "<cmd>:only<cr>", {
	desc = "Close other windows",
})

-- tmux
keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", {
	remap = true,
})

keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", {
	remap = true,
})

keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", {
	remap = true,
})

keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", {
	remap = true,
})
