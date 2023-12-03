vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = 4

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.termguicolors = true

require('plugins')
