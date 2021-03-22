local luaFormat = { formatCommand = "lua-format -i", formatStdin = true }

local prettier = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true}
local prettier_yaml = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}

require "lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua", "javascript", "typescript" , "html", "css", "json", "yaml"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = { luaFormat },
            html = { prettier },
            css = { prettier },
            json = { prettier },
            javascript = { prettier },
            typescript = { prettier },
            yaml = { prettier_yaml }
        }
    }
}
