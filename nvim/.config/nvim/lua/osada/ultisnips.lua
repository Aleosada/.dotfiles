if vim.fn.has('python3') then
    vim.g.completion_enable_snippet = 'UltiSnips'
    -- vim.g.UltiSnipsExpandTrigger="<c-y>"
    vim.g.UltiSnipsJumpForwardTrigger="<Tab>"
    vim.g.UltiSnipsJumpBackwardTrigger="<S-Tab>"
end
