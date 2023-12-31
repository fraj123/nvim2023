vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = 2

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.termguicolors = true

require('plugins')
