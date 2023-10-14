return {


	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		mason.setup({
			ui = {
				icons = {
					package_installed = "♥",
					package_pending = "๑",
					package_uninstalled = "x"
				}
			}
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"html",
				"cssls",
				"pyright",
				"lua_ls",
				"tsserver",
				"vtsls",
				"intelephense",
				"sqlls",
				"csharp_ls",
				"omnisharp",
				"kotlin_language_server",
			},
			automatic_installation = true,
		})
	end
}
