return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local telescope = require 'telescope'
    local builtin = require 'telescope.builtin'
    local actions = require 'telescope.actions'

    telescope.setup {
      defaults = {
        path_display = { 'smart' },
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
            ['<C-l>'] = actions.send_to_qflist + actions.open_qflist,
            ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    }
    telescope.load_extension 'fzf'

    local keymap = vim.keymap

    -- Spelling
    keymap.set('n', '<leader>ss', function()
      builtin.spell_suggest(require('telescope.themes').get_cursor {
        prompt_title = 'Spelling Suggestions',
        layout_config = {
          height = 0.25,
          width = 0.25,
        },
      })
    end, { noremap = true, silent = true })
    keymap.set('n', '<leader>sn', ']s', { desc = 'Next Spelling Error' })
    keymap.set('n', '<leader>sp', '[s', { desc = 'Previous Spelling Error' })

    keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd.' })
    keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Fuzzy find recent files.' })
    keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = 'Find string in cwd.' })
    keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Find string under cursor in cwd.' })
  end,
}
