-- map leader to ,
vim.g.mapleader = ","

-- enable true colours
vim.o.termguicolors = true

-- set line feeds
vim.opt.number = true
vim.opt.relativenumber = true

-- set colourscheme 
vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])

-- Ask vim to use the system clipboard
vim.opt.clipboard='unnamedplus'

-- setting fold instructions
vim.opt.foldmethod='expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()'
