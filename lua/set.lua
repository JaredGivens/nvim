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
vim.opt.colorcolumn = '80'
vim.cmd([[hi ColorColumn ctermbg=8]])
vim.cmd([[hi String ctermfg=10]])
vim.cmd([[hi Identifier ctermfg=14]])
vim.cmd([[hi Function ctermfg=15]])
vim.cmd([[hi Type ctermfg=4]])
vim.cmd([[hi PreProc ctermfg=13]])
vim.cmd([[hi DiffAdd ctermbg=None]])
vim.cmd([[hi DiffAdd ctermfg=10]])
vim.cmd([[hi DiffChange ctermbg=None]])
vim.cmd([[hi DiffChange ctermfg=11]])
vim.cmd([[hi DiffDelete ctermbg=None]])
vim.cmd([[hi DiffDelete ctermfg=9]])

vim.cmd([[hi Pmenu None]])
vim.cmd([[hi PmenuSel ctermbg=8]])
