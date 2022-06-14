return require 'packer'.startup(function()
  -- package manager
  use 'wbthomason/packer.nvim'
  -- file manager and some sugar
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- treesitter
  use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
  }
  -- colourschemes
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  -- lsp
  use { 'neovim/nvim-lspconfig' }
  -- auto completion
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- make lsp pretty 
  use 'onsails/lspkind-nvim'
  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
  }

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- git things
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use "lukas-reineke/indent-blankline.nvim"
  use {
    "lukas-reineke/headlines.nvim",
    config = function()
      require('headlines').setup()
    end,
  }
  use 'folke/lsp-colors.nvim'
  use {
    'williamboman/nvim-lsp-installer',
  }
  use {
  "ray-x/lsp_signature.nvim",
  }
  use "folke/trouble.nvim"
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end 
  }
  use "vimwiki/vimwiki"
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/nvim-lsp-installer'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
  }
  end)

