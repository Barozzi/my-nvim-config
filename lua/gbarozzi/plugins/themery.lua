return {
  'zaldih/themery.nvim',
  dependencies = {
    'folke/tokyonight.nvim',
    'Shatur/neovim-ayu',
    'catppuccin/nvim',
    'vague2k/vague.nvim',
    'rebelot/kanagawa.nvim',
    'NLKNguyen/papercolor-theme',
    'tpope/vim-vividchalk',
  },
  lazy = false,
  config = function()
    require('themery').setup {
      themes = { 'tokyonight', 'ayu', 'papercolor', 'vividchalk', 'catppuccin-mocha', 'kanagawa', 'vague' }, -- Your list of installed colorschemes.
      livePreview = true, -- Apply theme while picking. Default to true.
    }
  end,
}
