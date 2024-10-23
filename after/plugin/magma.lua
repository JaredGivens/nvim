vim.keymap.set("v", "<localleader>rv", ":<C-u>MoltenEvaluateVisual<CR>gv",
  { silent = true, desc = "evaluate visual selection" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
  { silent = true, desc = "re-evaluate cell" })
