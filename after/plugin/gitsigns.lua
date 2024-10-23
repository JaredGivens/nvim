local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk)
vim.keymap.set('n', '<leader>gs', gitsigns.stage_hunk)
vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk)
