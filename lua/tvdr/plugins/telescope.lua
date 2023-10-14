return {
	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()

		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require('telescope.builtin')


		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					}
			}}
		})

		local keymap = vim.keymap
		keymap.set('n', '<leader>ff', builtin.find_files, {})
		keymap.set('n', '<leader>gf', builtin.git_files, {})
		keymap.set('n', '<leader>fs', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end) 
	end
}
