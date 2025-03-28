-- Use spelling for markdown files ‘]s’ to find next, ‘[s’ for previous, 'z=‘ for suggestions when on one.
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown', 'text' },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.wrap = true
    vim.cmd 'PencilOff'
    -- vim.cmd 'ZenMode'
    -- vim.cmd 'colorscheme catppuccin-latte'
  end,
})
