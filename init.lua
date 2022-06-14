require 'plugins'
require 'settings'
require 'keymaps'
require 'lsp'
require 'treesitter'
require 'statusline'
require 'blankline'
require 'nvim-tree'.setup {}
require 'telescope'.setup{
    defaults = {
        prompt_prefix = ' ',
        selection_caret = '❯ ',
        sorting_strategy = 'ascending',
        layout_strategy = 'vertical',
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
            },
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--ignore',
            '--hidden',
            '-g',
            '!.git',
        },
    },
}
