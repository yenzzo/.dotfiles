-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard = "unnamedplus"

vim.keymap.set({ "v" }, "<C-c>", "y")
