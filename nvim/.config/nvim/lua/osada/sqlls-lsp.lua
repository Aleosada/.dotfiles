local on_attach = require'completion'.on_attach
local sqllsbin = "/home/aleosada/.nvm/versions/node/v14.17.0/bin/sql-language-server"

require'lspconfig'.sqlls.setup{
    on_attach = on_attach;
    cmd = { sqllsbin, "up" , "--method", "stdio" };
}
