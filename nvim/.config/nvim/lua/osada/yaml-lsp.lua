-- local on_attach = require'completion'.on_attach
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.yamlls.setup {
  -- on_attach = on_attach,
  capabilites = capabilities,
  settings = {
      yaml = {
          customTags = {
              "!Equals sequence",
              "!FindInMap sequence",
              "!GetAtt",
              "!GetAZs",
              "!ImportValue",
              "!Join sequence",
              "!Ref",
              "!Select sequence",
              "!Split sequence",
              "!Sub"
          }
      }
  }
}
