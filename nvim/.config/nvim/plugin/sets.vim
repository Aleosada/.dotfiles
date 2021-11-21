" syntax on
" filetype plugin indent on

" autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" if (has("termguicolors"))
"     set termguicolors
"     hi LineNr ctermbg=NONE guibg=NONE
" endif

" colorscheme nightfly

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
