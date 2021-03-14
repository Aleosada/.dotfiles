local on_attach = require'completion'.on_attach
local nvim_lsp = require('lspconfig')

local servers = { "pyright", "jsonls", "tsserver", "cssls", "vimls", "yamlls", "dockerls", "angularls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end
