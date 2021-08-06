return require('packer').startup(function()
	-- package manager
	use {'wbthomason/packer.nvim'}
	-- file manager 
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	-- colour schemes
	use {
		'npxbr/gruvbox.nvim',
		requires = {'rktjmp/lush.nvim'}
	}
	-- statusline
	use {
		'hoob3rt/lualine.nvim', 
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	-- lsp-config 
	
end)
