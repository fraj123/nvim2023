vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true

vim.o.mouse=nicr

vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd([[colorscheme gruvbox]])

vim.opt.termguicolors = true

-- copilot configuration
vim.g.copilot_assume_mapped = true

require('plugins')
