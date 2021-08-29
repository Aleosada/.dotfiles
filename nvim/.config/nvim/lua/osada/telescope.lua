local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = '🔍 ',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzy_native')

vim.api.nvim_set_keymap('n', '<leader>pf', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope git_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-_>', ':Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pg', ':lua require("osada.functions").grep_string()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gb', ':Telescope git_branches<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ph', ':Telescope help_tags<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ps', ':Telescope lsp_document_symbols<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pd', ':Telescope lsp_document_diagnostics<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pa', ':Telescope lsp_code_actions<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pr', ':Telescope registers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':Telescope grep_string search=todo<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pm', ':Telescope marks<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qf', ':Telescope quickfix<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>wf', ':Telescope find_files cwd=~/vimwiki<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cf', ':Telescope git_files cwd=~/.dotfiles<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>km', ':Telescope keymaps<CR>', { noremap = true, silent = true })
-- nnoremap <leader>fp :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
