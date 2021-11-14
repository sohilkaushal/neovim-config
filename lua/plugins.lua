return require 'packer'.startup(function()
  -- package manager
  use 'wbthomason/packer.nvim'
  -- file manager and some sugar
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
    } end
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
  requires = { {'nvim-lua/plenary.nvim'} }
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
  -- org mode -> super alpha
  use { 
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            -- Tell Neorg what modules to load
            load = {
                ["core.defaults"] = {}, -- Load all the default modules
                ["core.norg.concealer"] = {}, -- Allows for use of icons
                ["core.norg.dirman"] = { -- Manage your directories with Neorg
                    config = {
                        workspaces = {
                            my_workspace = "~/neorg"
                        }
                    }
                },
                ["core.norg,completion"] = {
                  config = {
                    engine = "nvim-cmp"
                  }
                }
            },
        }
    end,
    requires = "nvim-lua/plenary.nvim"
  }
  use "lukas-reineke/indent-blankline.nvim"
end)

