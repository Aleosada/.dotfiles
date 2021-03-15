if vim.fn.has('python3') then
    vim.g.completion_enable_snippet = 'UltiSnips'
    vim.g.UltiSnipsExpandTrigger="<Tab>"
    vim.g.UltiSnipsJumpForwardTrigger="<Tab>"
    vim.g.UltiSnipsJumpBackwardTrigger="<S-Tab>"
end
