return {
	{
		{
			'glepnir/dashboard-nvim',
			event = 'VimEnter',
			config = function()
				require('dashboard').setup {
					theme = 'hyper',
					disablemove = true,
					shortcuttype = 'letter',
					config = {
						week_header = {
							enable = true,
						},
						header = {

							"JUJU",
							"",

							""

		
						},

						shortcut = {
							{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
							{
								icon = ' ',
								icon_hl = '@variable',
								desc = 'Files',
								group = 'Label',
								action = 'Telescope find_files',
								key = 'f',
							},
							{
								desc = '🌐 Git',
								group = 'DiagnosticHint',
								action = vim.cmd.Git,
								key = 'a',
							},
							{
								desc = '🌳 Browse Explorer',
								group = 'Number',
								action = 'NvimTreeToggle',
								key = 'd',
							},
						},
						packages = { enable = true },
						project = { enable = true, limit = 3, icon = '📁', label = '· Dossiers récents', action = 'Telescope find_files cwd=' },
						mru = { limit = 7, icon = '📋', label = '· Fichiers récents', },
						footer = {
							"",
							"",
							"🎴 Votre main : " .. require("tvdr.data.card").getCardSign() .. "·" .. require("tvdr.data.card").getCardValue() .. "  &  " ..  require("tvdr.data.card").getCardSign() .. "·" .. require("tvdr.data.card").getCardValue() .. " 🎴" ,
							"",
							require("tvdr.data.quotes").getRandomQuote()
						},
					},
					hide = {
						statusline = false,
						tabline = false,
						winbar = false
					},
				}
			end,
			dependencies = { {'nvim-tree/nvim-web-devicons'}},
		}
	}

}
