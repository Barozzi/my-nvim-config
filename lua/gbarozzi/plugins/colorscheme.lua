return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    local bg = '#011628'
    local bg_dark = '#011423'
    local bg_highlight = '#143652'
    local bg_search = '#0A64AC'
    local bg_visual = '#275378'
    local fg = '#CBE0F0'
    local fg_dark = '#B4D0E9'
    local fg_gutter = '#627E97'
    local border = '#547998'

    require('tokyonight').setup {
      style = 'night',
      on_colors = function(c)
        c.bg = bg
        c.bg_dark = bg_dark
        c.bg_float = bg_dark
        c.bg_highlight = bg_highlight
        c.bg_popup = bg_dark
        c.bg_search = bg_search
        c.bg_sidebar = bg_dark
        c.bg_statusline = bg_dark
        c.bg_visual = bg_visual
        c.border = border
        c.fg = fg
        c.fg_dark = fg_dark
        c.fg_float = fg
        c.fg_gutter = fg_gutter
        c.fg_sidebar = fg_dark
      end,
    }
    vim.cmd 'colorscheme tokyonight'
  end,
}
