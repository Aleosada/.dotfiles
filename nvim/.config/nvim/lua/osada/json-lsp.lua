local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')

nvim_lsp.jsonls.setup {
    capabilities = capabilities,
    filetypes = { "json", "jsonc" },
    settings = {
        json = {
          schemas = {
            {
              fileMatch = {"package.json"},
              url = "https://json.schemastore.org/package.json"
            },
            {
              fileMatch = {"tsconfig*.json"},
              url = "https://json.schemastore.org/tsconfig.json"
            },
            {
              fileMatch = {
                ".prettierrc",
                ".prettierrc.json",
                "prettier.config.json"
              },
              url = "https://json.schemastore.org/prettierrc.json"
            },
            {
              fileMatch = {".eslintrc", ".eslintrc.json"},
              url = "https://json.schemastore.org/eslintrc.json"
            },
            {
              fileMatch = {".babelrc", ".babelrc.json", "babel.config.json"},
              url = "https://json.schemastore.org/babelrc.json"
            },
            {
              fileMatch = {"lerna.json"},
              url = "https://json.schemastore.org/lerna.json"
            },
          }
       }
    }
}
