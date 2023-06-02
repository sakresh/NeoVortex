require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "bash", "lua", "javascript", "typescript", "vim"},
  sync_install = false,
  auto_install = true,
  hightlight = {
    enable = true,
  },
}
