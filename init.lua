require('settings')
require('keymaps')
require('plugins')
require('statusline')
require('treesitter')
require'lspconfig'.pyright.setup{
	on_attach=require'completion'.on_attach
}
