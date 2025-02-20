vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits same size' })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })
keymap.set('n', '<leader>so', '<C-w>o', { desc = 'Close all other splits' })
keymap.set('n', '<leader>sm', '<cmd>vertical resize 200<CR>', { desc = 'Set current split as main' })

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab
keymap.set('n', '<leader>nc', ':let @+=expand("%:p")<CR>', { desc = 'Copy filename to clipboard' }) --  move current buffer to new tab
keymap.set('n', '<leader>nj', '<cmd>%!jq<CR><cmd>set syntax=json<CR>', { desc = 'Format JSON' }) --  move current buffer to new tab

-- AI
-- keymap.set('n', '<leader>ai', '<cmd>Gen<CR>', { desc = 'Open Ollama AI prompt' }) --  move current buffer to new tab

keymap.set('n', 'H', "<cmd>let @/=expand('<cword>')<CR><cmd>set hlsearch<CR>", { desc = 'Highlight and search work under cursor' })

-- word count
keymap.set('n', '<leader>wc', 'g<C-g>', { desc = 'Highlight and search work under cursor' })
keymap.set('n', '<leader>wm', '<cmd>ZenMode<CR><cmd>PencilToggle<CR>', { desc = 'Toggle Writer Mode' })

-- Here are some concise suggestions:
--
-- 1. In the `mapleader` line, you can remove the space at the beginning to make it more compact.
-- 2. For the `i` mode mapping for exiting with `jk`, consider adding a confirmation prompt before actually exiting, as `jk` is commonly used for navigating in normal mode and may accidentally trigger this mapping.
-- 3. For clearing search highlights (`<leader>nh`), consider making it a global command by removing the `n` flag, which only applies to current buffer.
-- 4. For splitting windows vertically (`<leader>sv`) and horizontally (`<leader>sh`), consider using `:vsplit` and `:split` instead of their corresponding mappings, as it's more efficient and easier to remember.
-- 5. For making splits same size (`<leader>se`), consider adding a confirmation prompt before actually resizing them, as this operation may alter the layout unexpectedly.
-- 6. For closing current split (`<leader>sx`) and closing all other splits (`<leader>so`), consider using `:q` instead of their corresponding mappings, as it's more efficient and easier to remember.
-- 7. For setting current split as main (`<leader>sm`), consider adding a confirmation prompt before actually resizing them, as this operation may alter the layout unexpectedly.
-- 8. For opening new tab (`<leader>to`), consider using `:tabnew` instead of its corresponding mapping, as it's more efficient and easier to remember.
-- 9. For closing current tab (`<leader>tx`) and going to next/previous tab (`<leader>tn`/`<leader>tp`), consider using `gt` and `gT` instead of their corresponding mappings, as it's more efficient and easier to remember.
-- 10. For moving current buffer to new tab (`<leader>tf`), consider adding a confirmation prompt before actually duplicating the buffer, as this operation may waste resources.
-- 11. For copying filename to clipboard (`<leader>nc`), consider using `"+y` instead of its corresponding mapping, as it's more efficient and easier to remember.
-- 12. For opening Ollama AI prompt (`<leader>ai`), consider adding a confirmation prompt before actually executing the command, as this operation may generate unexpected results.
-- 13. For highlighting and searching work under cursor (`H`), consider adding a confirmation prompt before actually executing the search, as this operation may be time-consuming for long documents.
-- 14. In general, consider adding confirmation prompts before executing mappings that perform destructive or resource-intensive operations, to prevent accidental usage and ensure user input.
