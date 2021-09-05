return require('lualine').setup {
	options = { theme = 'gruvbox' },
	extensions = { 'nvim-tree' },
	tabline = {
		lualine_a = {'filename'},
	},
	sections = { 
		lualine_c = {''}
	}
}

