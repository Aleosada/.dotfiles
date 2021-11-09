if vim.fn.has('python3') then
    vim.g.completion_enable_snippet = 'UltiSnips'
    vim.g.UltiSnipsExpandTrigger="<c-l>"
    vim.g.UltiSnipsJumpForwardTrigger="<c-l>"
    vim.g.UltiSnipsJumpBackwardTrigger="<c-h>"
end
