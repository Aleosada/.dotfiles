vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', 'C-z', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

--Maximizer maps
vim.api.nvim_set_keymap('n', '<leader>ww', ':MaximizerToggle<CR>', { noremap = true, silent = true })
