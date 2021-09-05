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
  use {'neovim/nvim-lspconfig'}
  -- Terraform
	use {'hashivim/vim-terraform'}
	-- Indent Guides
	use {'lukas-reineke/indent-blankline.nvim'}
	use { 
	    'vhyrro/neorg', 
	     requires = 'nvim-lua/plenary.nvim'
	}
	use {'vimwiki/vimwiki'}
  use {'towolf/vim-helm'}
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind-nvim'
end)
