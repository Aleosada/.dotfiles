-- local on_attach = require'completion'.on_attach
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/bin/omnisharp"
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.omnisharp.setup{
    -- on_attach = on_attach;
    capabilites = capabilities,
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
