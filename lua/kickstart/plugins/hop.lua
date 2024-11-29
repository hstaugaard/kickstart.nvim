return {
  {
    'smoka7/hop.nvim',
    version = '*',
    config = function()
      local hop = require 'hop'
      hop.setup { keys = 'etovxqpdygfblzhckisuran' }
      local directions = require('hop.hint').HintDirection
      vim.keymap.set('n', '<leader>es', function()
        hop.hint_char1 {}
      end, { remap = true })
      vim.keymap.set('n', '<leader>ew', function()
        hop.hint_words { direction = directions.AFTER_CURSOR }
      end, { remap = true })
      vim.keymap.set('n', '<leader>eb', function()
        hop.hint_words { direction = directions.BEFORE_CURSOR }
      end, { remap = true })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
