vim.o.hidden=true
vim.o.backup=false
vim.o.exrc=true
vim.o.cmdheight=2
vim.o.splitbelow=true
vim.o.splitright=true
-- vim.o.t_Co="256"
vim.o.undodir="~/.config/nvim/undodir"
vim.o.updatetime=300
vim.o.incsearch=true
vim.o.hlsearch=false
vim.o.errorbells=false

vim.o.tabstop=4
vim.bo.tabstop=4
vim.o.softtabstop=4
vim.bo.softtabstop=4
vim.o.shiftwidth=4
vim.bo.shiftwidth=4
vim.o.smartindent=true
vim.bo.smartindent=true
vim.o.expandtab=true
vim.bo.expandtab=true
vim.o.autoindent=true
vim.bo.autoindent=true
vim.o.swapfile=false
vim.bo.swapfile=false

vim.wo.wrap=false
vim.wo.colorcolumn="80"
vim.wo.signcolumn="yes"
vim.wo.number=true
vim.wo.relativenumber=true
vim.o.scrolloff=8
vim.wo.scrolloff=8

vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

vim.cmd('autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab')
vim.cmd('autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab')
vim.cmd('autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab')
vim.cmd('autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab')
vim.cmd('autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab')
vim.cmd('autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab')
