local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>fh', fzf.oldfiles)
vim.keymap.set('n', '<leader>ff', fzf.files)
vim.keymap.set('n', '<leader>rg', fzf.live_grep)
vim.keymap.set('n', '<leader>fg', fzf.git_status)
fzf.register_ui_select()
fzf.setup({
  fzf_bin = 'sk',
  winopts = {
    -- Position the floating window on the right side
    height = 0.85,  -- Window height (85% of screen)
    width = 0.20,   -- Narrow width for a column (40% of screen)
    row = 0.05,     -- Near the top (5% from top)
    col = 0.95,     -- Far right (95% from left, aligns right edge)
    backdrop = 100, -- Keep backdrop opacity

    -- Preview configuration
    preview = {
      layout = "vertical",     -- Force vertical layout (preview below files)
      vertical = "down:50%",   -- Preview takes 50% of fzf window height, below
      horizontal = "right:0%", -- Disable horizontal layout
      flip_columns = 0,        -- Disable flex switching to horizontal
      title = true,            -- Show preview title
      title_pos = "center",    -- Center title
      scrollbar = "float",     -- Floating scrollbar
      scrolloff = -1,          -- Scrollbar offset
      delay = 20,              -- Preview delay
    },

  },
  -- Optional: Keybindings for fzf-lua commands
  keymap = {
    fzf = {
      ["ctrl-j"] = "down",
      ["ctrl-k"] = "up",
    },
  },
})
