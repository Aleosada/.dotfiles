local on_attach = require'completion'.on_attach
local nvim_lsp = require('lspconfig')

local servers = { "pyright", "jsonls", "tsserver", "vimls", "yamlls", "dockerls", "angularls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

vim.o.completeopt = 'menuone,noinsert,noselect'
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

vim.api.nvim_set_keymap('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gD', ':lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gi', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ff', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ds', ':lua vim.lsp.util.show_line_diagnostics()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dn', ':lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dp', ':lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dl', ':lua vim.lsp.diagnostic.set_loclist()<CR>', { noremap = true, silent = true })

vim.fn.sign_define('LspDiagnosticsSignError', { text='🔴', numhl = "LspDiagnosticsDefaultError" })
vim.fn.sign_define('LspDiagnosticsSignWarning', { text='', numhl = "LspDiagnosticsDefaultWarning" })
vim.fn.sign_define('LspDiagnosticsSignInformation', { text='📖', numhl = "LspDiagnosticsDefaultInformation" })
vim.fn.sign_define('LspDiagnosticsSignHint', { text='💡', numhl = "LspDiagnosticsDefaultHint" })
