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

  use 'gruvbox-community/gruvbox'

  use 'vim-airline/vim-airline'
  use 'tpope/vim-fugitive'

  use 'jiangmiao/auto-pairs'
  use 'szw/vim-maximizer'

  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'

  use 'ap/vim-css-color'

  use 'mattn/emmet-vim'
  use 'sirver/ultisnips'
  use 'honza/vim-snippets'

  use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
end)
