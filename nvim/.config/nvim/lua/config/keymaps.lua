local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- window
keymap.set("n", "<leader>wo", "<cmd>:only<cr>", {
	desc = "Close other windows",
})

keymap.set("n", "<leader>bd", "<cmd>:Bdelete<cr>", { desc = "Delete current buffer", remap = true })

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
