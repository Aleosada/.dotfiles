require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  context_commentstring = {
      enable = true,
  },
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true
  }
}
