return {
	"tpope/vim-fugitive",
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>gg", vim.cmd.Git)
	end
}
