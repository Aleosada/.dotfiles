local functions = { }
functions.grep_string = function()
    local opt = { search = vim.fn.input("Grep For > ") }
    require('telescope.builtin').grep_string(opt)
end


return functions
