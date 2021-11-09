-- local on_attach = require'completion'.on_attach
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')

local servers = {
    "pyright",
    "jsonls",
    "tsserver",
    "vimls",
    "dockerls",
    "angularls",
    "gopls",
    -- "denols"
}

nvim_lsp.terraformls.setup{
  -- on_attach = on_attach,
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "tf", "tfvars", "hcl" },
  capabilites = capabilities
}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { capabilities = capabilities }
end

vim.o.completeopt = 'menu,menuone,noinsert,noselect'
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

vim.api.nvim_set_keymap('n', '<leader>ee', ':lua vim.lsp.util.show_line_diagnostics()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ej', ':lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ek', ':lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>el', ':lua vim.lsp.diagnostic.set_loclist()<CR>', { noremap = true, silent = true })

vim.fn.sign_define('LspDiagnosticsSignError', { text='🔴', numhl = "LspDiagnosticsDefaultError" })
vim.fn.sign_define('LspDiagnosticsSignWarning', { text='', numhl = "LspDiagnosticsDefaultWarning" })
vim.fn.sign_define('LspDiagnosticsSignInformation', { text='📖', numhl = "LspDiagnosticsDefaultInformation" })
vim.fn.sign_define('LspDiagnosticsSignHint', { text='💡', numhl = "LspDiagnosticsDefaultHint" })

-- Disable virtual line errors
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
