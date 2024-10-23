-- install lazy if not found
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins
require('lazy').setup({
  -- git integration
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  {
    'lervag/vimtex',
    init = function()
      vim.g.vimtex_view_method = 'zathura'
    end
  },
  -- jupyter notebooks
  { 'GCBallesteros/jupytext.nvim', config = true, lazy = false },

  -- images
  {
    '3rd/image.nvim',
    opts = {
      backend = 'kitty',
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { 'markdown', 'vimwiki' }, -- markdown extensions (ie. quarto) can go here
        },
        neorg = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { 'norg' },
        },
      },
      max_width = 100,
      max_height = 12,
      max_width_window_percentage = math.huge,
      max_height_window_percentage = math.huge,
      window_overlap_clear_enabled = true,                                      -- toggles images when windows are overlapped
      window_overlap_clear_ft_ignore = { 'cmp_menu', 'cmp_docs', '' },
      editor_only_render_when_focused = false,                                  -- auto show/hide images when the editor gains/looses focus
      tmux_show_only_in_active_window = false,                                  -- auto show/hide images in the correct Tmux window (needs visual-activity off)
      hijack_file_patterns = { '*.png', '*.jpg', '*.jpeg', '*.gif', '*.webp' }, -- render image files as images when opened
    }
  },
  -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- lsp
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'L3MON4D3/LuaSnip',
    }
  },
  -- icons
  'nvim-tree/nvim-web-devicons'
}, opts)
