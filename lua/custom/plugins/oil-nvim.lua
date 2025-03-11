return {
  'stevearc/oil.nvim',
  opts = {},
  config = function()
    local oil = require 'oil'

    oil.setup {
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end,
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
}
