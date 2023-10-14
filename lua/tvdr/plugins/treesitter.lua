return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local configs = require("nvim-treesitter.configs")
			local install = require("nvim-treesitter.install")
			install.prefer_git = false
			install.compilers = { "gcc","clang" }
			configs.setup({
				ensure_installed = {
					"c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript",
					"kotlin", "twig", "css", "json", "php", "sql", "c_sharp", "rust"
				},
				sync_install = true,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = true,
				},
				indent = { enable = true },
				autotag = { enable = true },
			})
		end
	}
}
