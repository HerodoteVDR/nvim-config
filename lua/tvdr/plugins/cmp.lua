return {

	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- text buffer
		"hrsh7th/cmp-path", -- filesystem path
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- autocompletion engine
		"rafamadriz/friendly-snippets",
	},

	config = function ()
		local cmp = require('cmp')
		local luasnip = require('luasnip')
		require("luasnip.loaders.from_vscode").lazy_load()
		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- up suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- down suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4), -- backward
				["<C-f>"] = cmp.mapping.scroll_docs(4), -- forward
				["<C-Space>"] = cmp.mapping.complete(), -- manually open suggestions
				["<C-e>"] = cmp.mapping.abort(), -- manually close suggestions
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			sources = cmp.config.sources ({
				{ name = "nvim-lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			})
		})
	end,


}
