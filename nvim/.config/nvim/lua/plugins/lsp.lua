return {
	-- lsp servers
	{
		"neovim/nvim-lspconfig",
		init = function()
			local keys = require("lazyvim.plugins.lsp.keymaps").get()
		end,
		opts = {
			diagnostics = {
				virtual_text = {
					prefix = "👻",
				},
			},
			inlay_hints = { enabled = false },
			---@type lspconfig.options
			servers = {
				unocss = {
					handlers = {
						["textDocument/documentHighlight"] = function() end,
					},

					cmd = { "unocss-language-server", "--stdio" },
					filetypes = {
						"html",
						"pug",
						"javascriptreact",
						"rescript",
						"typescriptreact",
						"vue",
						"svelte",
					},
					root_dir = function(fname)
						local util = require("lspconfig.util")
						return util.root_pattern(
							"unocss.config.js",
							"unocss.config.ts",
							"uno.config.js",
							"uno.config.ts"
						)(fname)
					end,
				},
			},
		},
	},
}
