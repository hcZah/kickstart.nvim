return {
  'nvim-treesitter/nvim-treesitter-context',
  opts = function()
    local tsc = require 'treesitter-context'
    tsc.setup {
      multiwindow = true,
      23,
    }
  end,
}
