-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- install mason
require("mason").setup()

-- install mason-lspconfig
require("mason-lspconfig").setup()

-- clipboard options
vim.opt.clipboard = "unnamedplus"
vim.keymap.set({ "v" }, "<C-c>", "y")

-- change '<<' and '>>' indentation number of spaces
local o = vim.o
o.shiftwidth = 3
