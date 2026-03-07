-- Faster save
-- (in edit mode it stays in normal mode after saver)
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Quick save file [N]ormal mode' })
vim.keymap.set('i', '<C-s>', '<cmd>w<CR>', { desc = 'Quick save file [I]nsert mode' })

-- Search TODOs
vim.keymap.set('n', '<leader>st', function() require('telescope.builtin').live_grep { default_text = 'TODO' } end, { desc = '[S]earch [T]odos' })
