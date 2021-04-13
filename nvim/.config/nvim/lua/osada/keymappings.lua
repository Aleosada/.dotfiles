vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', 'C-z', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')

--Maximizer maps
vim.api.nvim_set_keymap('n', '<leader>ww', ':MaximizerToggle<CR>', { noremap = true, silent = true })

-- Vim wiki maps
vim.api.nvim_set_keymap('n', '<leader>wo', ':VimwikiIndex<CR>', { noremap = true, silent = true })
