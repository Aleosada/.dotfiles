-- Remapeamento da navegação entre splits
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><C-h>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><C-j>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><C-k>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><C-l>', { noremap=true, silent=true })

vim.g.qf_value = 0;
vim.g.lf_value = 0;

function ToggleQFList(global)
    if global == 0 then
        if vim.g.qf_value == 0 then
            vim.g.qf_value = 1
            vim.api.nvim_command('copen')
        else
            vim.g.qf_value = 0
            vim.api.nvim_command('cclose')
        end
    else
        if vim.g.lf_value == 0 then
            vim.g.lf_value = 1
            vim.api.nvim_command('lopen')
        else
            vim.g.lf_value = 0
            vim.api.nvim_command('lclose')
        end
    end
end

-- vim.api.nvim_set_keymap('n', '<leader>qf', [[<Cmd>lua ToggleQFList(0)<CR>]], { noremap=true, silent=true })
-- vim.api.nvim_set_keymap('n', '<leader>lf', [[<Cmd>lua ToggleQFList(1)<CR>]], { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>qn', ':cnext<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>qp', ':cprev<CR>', { noremap=true, silent=true })
