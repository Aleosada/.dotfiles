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

-- Copy to clipboard maps
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', 'gg"+yG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- Copy until the end of the line
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true, silent = true })

-- Move text
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>k', ':m .-2<CR>==', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>j', ':m .+1<CR>==', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-k>', ':<esc>:m .-2<CR>==', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-j>', ':<esc>:m .+1<CR>==', { noremap = true, silent = true })

-- Undo breakpoints
vim.api.nvim_set_keymap('i', ',', ',<c-g>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', ';', ';<c-g>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '!', '!<c-g>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '?', '?<c-g>u', { noremap = true, silent = true })
