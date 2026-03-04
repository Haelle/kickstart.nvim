-- Faster save
-- (in edit mode it stays in normal mode after saver)
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save file [N]ormal mode' })
vim.keymap.set('i', '<C-s>', '<cmd>w<CR>', { desc = 'Save file [I]nsert mode' })
