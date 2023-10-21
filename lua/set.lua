vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.rnu = true

vim.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false
vim.opt.scrolloff = 4
vim.opt.colorcolumn = "80"
vim.cmd([[hi ColorColumn ctermbg=black guibg=lightgrey]])
vim.cmd([[hi String ctermfg=green]])

vim.cmd([[hi Type ctermfg=4]])

vim.cmd([[hi PreProc ctermfg=13]])

vim.cmd([[hi Pmenu None]])
vim.cmd([[hi PmenuSel ctermbg=8]])

