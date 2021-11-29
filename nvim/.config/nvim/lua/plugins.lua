local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'gruvbox-community/gruvbox'
  -- use 'bluz71/vim-nightfly-guicolors'

  use 'vim-airline/vim-airline'
  use 'tpope/vim-fugitive'

  use 'szw/vim-maximizer'
  -- use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-autopairs'

  use 'neovim/nvim-lspconfig'
  -- use 'nvim-lua/completion-nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use 'onsails/lspkind-nvim'

  use 'ap/vim-css-color'

  use 'mattn/emmet-vim'
  use 'sirver/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'honza/vim-snippets'
  -- use {'honza/vim-snippets', rtp = '.'}

  use 'tomlion/vim-solidity'

  use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'

  use 'kyazdani42/nvim-web-devicons'

  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'tpope/vim-surround'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use 'vimwiki/vimwiki'

  use 'puremourning/vimspector'

  use 'christoomey/vim-tmux-navigator'

  use 'vim-test/vim-test'
  use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }

  -- use 'uarun/vim-protobuf'
end)
