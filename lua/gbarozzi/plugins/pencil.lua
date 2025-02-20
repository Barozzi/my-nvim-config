return {
  'preservim/vim-pencil',
  config = function()
    vim.g['pencil#wrapModeDefault'] = 'soft'

    -- Auto-enable pencil for markdown and text files
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'markdown', 'text' },
      callback = function()
        vim.cmd 'PencilSoft'
      end,
    })

    -- Optional: Set additional pencil options
    vim.g['pencil#textwidth'] = 80
    vim.g['pencil#cursorwrap'] = 1
    vim.g['pencil#conceallevel'] = 3
  end,
}
