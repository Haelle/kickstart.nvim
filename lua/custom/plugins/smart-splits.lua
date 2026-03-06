return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    local splits = require 'smart-splits'
    ---@diagnostic disable-next-line: missing-fields
    splits.setup {
      default_amount = 1,
    }

    vim.keymap.set('n', '<C-Left>', splits.resize_left)
    vim.keymap.set('n', '<C-Right>', splits.resize_right)
    vim.keymap.set('n', '<C-Up>', splits.resize_up)
    vim.keymap.set('n', '<C-Down>', splits.resize_down)
  end,
}
