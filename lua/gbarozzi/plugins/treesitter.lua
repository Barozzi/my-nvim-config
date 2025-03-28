return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  dependencies = {
    -- import treesitter plugin
    'windwp/nvim-ts-autotag',
  },
  config = function()
    local treesitter = require 'nvim-treesitter.configs'

    treesitter.setup {
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        'glimmer',
        'javascript',
        'typescript',
        'tsx',
        'yaml',
        'json',
        'html',
        'css',
        'svelte',
        'markdown',
        'go',
        'vim',
        'dockerfile',
        'lua',
        'bash',
        'ruby',
        'scala',
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
    }
  end,
}
