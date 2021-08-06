--  function               <mode>  <keys> <actions>  <options>
--  vim.api.nvim_set_keymap('n', '<C-s>', ':write<CR>', {noremap=true} )
vim.api.nvim_set_keymap("n", "<Leader>b", ":NvimTreeToggle<CR>", {noremap = true})

