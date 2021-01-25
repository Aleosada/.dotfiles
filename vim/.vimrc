filetype plugin indent on										        " Configurações para reconhecimento do tipo do arquivo e plugins
syntax on												                " Configuração para as cores de acordo com a linguagem
set nocompatible                                                        " Desliga compatibilidade com versões anteriores do vim
set hidden												                " Configuração quer permite abrir um novo buffer sem salvar o atual

let $VIMRC="$HOME/.vim/vimrc"										    " Cria variável de ambiente apontando para o arquivo $HOME/.vim/vimrc

set exrc                                                                " Faz o source do vimrc local do projeto
set shiftwidth=4											            " Configura o tamanho da identação para 4 quando utilizado os comando de shift >> e <<
set tabstop=4												            " Altera a quantidade de espaços do tab para 4
set softtabstop=4
set expandtab												            " Faz com que o tab seja expandido para espaços em branco
set autoindent												            " Copia a identação da linha anterior quando se abre uma nova linha
set noerrorbells visualbell t_vb=                                       " Desabilita sons de erros
set smartindent												            " Tenta sugerir uma nova identação quando são abertos ( e {
set number relativenumber                                               " Exibe o número da linha na esquerda em relação a posição do cursor
set nowrap                                                              " Remove quebra de linha
set incsearch                                                           " Highlight da pesquisa durante a digitação
set nobackup
set noswapfile
set scrolloff=8                                                         " Começa a fazer scroll da tela quando está a 8 posições do fim
set path+=**,                                                           " Muda a variável path para buscar em todos os subdiretórios do diretório atual

" Configurações para o autocomplete nativo
set completeopt=menuone,noinsert,noselect,popuphidden
set completepopup=highlight:Pmenu,border:off

let mapleader=","

" Set this to 1 to use ultisnips for snippet handling
let s:using_snippets = 1

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdtree'

" Colorscheme
Plug 'gruvbox-community/gruvbox'

" Omnisharp
Plug 'omnisharp/omnisharp-vim'

" Javascript and jsx support
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'

" Emmet
Plug 'mattn/emmet-vim'

" Css colors preview
Plug 'ap/vim-css-color'

" Mappings, code-actions available flag and statusline integration
Plug 'nickspoons/vim-sharpenup'

" Linting/error highlighting
Plug 'dense-analysis/ale'

" Vim FZF integration, used as OmniSharp selector
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'ryanolsonx/vim-lsp-javascript'
Plug 'runoshun/tscompletejob'
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'

" Snippet support
if s:using_snippets
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif

call plug#end()

" Colors: {{{
augroup ColorschemePreferences
  autocmd!
  " These preferences clear some gruvbox background colours, allowing transparency
  autocmd ColorScheme * highlight Normal     ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight SignColumn ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight Todo       ctermbg=NONE guibg=NONE
  " Link ALE sign highlights to similar equivalents without background colours
  autocmd ColorScheme * highlight link ALEErrorSign   WarningMsg
  autocmd ColorScheme * highlight link ALEWarningSign ModeMsg
  autocmd ColorScheme * highlight link ALEInfoSign    Identifier
augroup END

" Use truecolor in the terminal, when it is supported
if has('termguicolors')
  set termguicolors
endif

set background=dark
colorscheme gruvbox
" }}}

" Emmet: {{{
let g:user_emmet_leader_key=','
" }}}

" NerdTree: {{{
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" }}}

" ALE: {{{
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'

let g:ale_linters = { 'cs': ['OmniSharp'], 'javascript': ['eslint'] }
" }}}

" Asyncomplete: {{{
call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
    \ 'name': 'tscompletejob',
    \ 'allowlist': ['typescript'],
    \ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
    \ }))

if executable('vim-language-server')
  augroup LspVim
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'vim-language-server',
        \ 'cmd': {server_info->['vim-language-server', '--stdio']},
        \ 'whitelist': ['vim'],
        \ 'initialization_options': {
        \   'vimruntime': $VIMRUNTIME,
        \   'runtimepath': &rtp,
        \ }})
  augroup END
endif

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
inoremap <expr> <C-j>   pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k>   pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
" }}}

" OmniSharp: {{{
let g:OmniSharp_popup_position = 'peek'
let g:OmniSharp_server_use_mono = 0
if has('nvim')
  let g:OmniSharp_popup_options = {
  \ 'winhl': 'Normal:NormalFloat'
  \}
else
  let g:OmniSharp_popup_options = {
  \ 'highlight': 'Normal',
  \ 'padding': [0, 0, 0, 0],
  \ 'border': [1]
  \}
endif
let g:OmniSharp_popup_mappings = {
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'pageDown': ['<C-f>', '<PageDown>'],
\ 'pageUp': ['<C-b>', '<PageUp>']
\}

" Sharpenup: {{{
" All sharpenup mappings will begin with `<Space>os`, e.g. `<Space>osgd` for
" :OmniSharpGotoDefinition
let g:sharpenup_map_prefix = '<Space>os'

set updatetime=500

sign define OmniSharpCodeActions text=💡

augroup OSCountCodeActions
  autocmd!
  autocmd FileType cs set signcolumn=yes
  autocmd CursorHold *.cs call OSCountCodeActions()
augroup END

function! OSCountCodeActions() abort
  if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
  if !OmniSharp#IsServerRunning() | return | endif
  let opts = {
  \ 'CallbackCount': function('s:CBReturnCount'),
  \ 'CallbackCleanup': {-> execute('sign unplace 99')}
  \}
  call OmniSharp#actions#codeactions#Count(opts)
endfunction

function! s:CBReturnCount(count) abort
  if a:count
    let l = getpos('.')[1]
    let f = expand('%:p')
    execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
  endif
endfunction

if s:using_snippets
  let g:OmniSharp_want_snippet = 1
endif

if has('python3')
    let g:UltiSnipsExpandTrigger="<Tab>"
    let g:UltiSnipsJumpForwardTrigger="<Tab>"
    let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

" Mapeamento para não perder a seleção depois de identar no modo visual
vmap > >gv
vmap < <gv

" Desabilita o comando de suspensão do processo no modo normal
nnoremap <C-z> <nop>

" Remapeamento da navegação entre splits
nnoremap <C-h> <C-w><C-h> 
nnoremap <C-j> <C-w><C-j> 
nnoremap <C-k> <C-w><C-k> 
nnoremap <C-l> <C-w><C-l> 

set splitbelow
set splitright

" Mapeamento para substituição
nnoremap <leader>s :%s/

" Mapeamentos para o FZF
nnoremap <silent> <leader>f  :Files<CR>
nnoremap <silent> <leader>gf :GFiles<CR>
nnoremap <silent> <leader>b  :Buffers<CR>
nnoremap <silent> <leader>rg  :Rg<CR>

" Mapemanto para xclip
vmap <C-y> :!xclip -f -sel clip<CR>
map <C-p> :-1r !xclip -o -sel clip<CR>`z

" Abbreviations
abbr _bash #!/bin/bash
