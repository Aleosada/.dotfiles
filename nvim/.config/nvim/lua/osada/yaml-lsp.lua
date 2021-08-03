local on_attach = require'completion'.on_attach

require'lspconfig'.yamlls.setup {
  on_attach = on_attach,
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
