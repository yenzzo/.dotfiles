return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  main = 'nvim-treesitter.config',
  opts = {
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "cmake" },
    highlight = {
      enable = true,
    },
  }
}
