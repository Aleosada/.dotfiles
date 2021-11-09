-- local on_attach = require'completion'.on_attach
local sqllsbin = "/home/aleosada/.nvm/versions/node/v14.17.0/bin/sql-language-server"
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.sqlls.setup{
    -- on_attach = on_attach;
    capabilities = capabilities,
    cmd = { sqllsbin, "up" , "--method", "stdio" };
}
