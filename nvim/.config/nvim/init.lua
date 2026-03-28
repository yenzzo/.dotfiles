-- set leader key to space
vim.g.mapleader = ""
vim.g.maplocalleader = ""
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop")

-- I GUESS this sets up lazy.nvimvim
require("config.lazy")

-- clipboard options
vim.opt.clipboard = "unnamedplus"
vim.keymap.set({ "v" }, "<C-c>", "y")

-- change '<<' and '>>' indentation number of spaces
local o = vim.o
o.shiftwidth = 3

-- set lazy.nvim gruvbox plugin theme
vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])
