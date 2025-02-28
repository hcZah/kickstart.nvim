return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[A]dd harpoon mark' })

    vim.keymap.set('n', '<leader>ht', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[T]oggle harpoon quick menu' })

    local function addSelect(number)
      vim.keymap.set('n', '<leader>' .. number, function()
        harpoon:list():select(number)
      end, { desc = 'which_key_ignore' })
    end
    addSelect(1)
    addSelect(2)
    addSelect(3)
    addSelect(4)
    addSelect(5)

    vim.keymap.set('n', '<leader>hn', function()
      harpoon:list():next()
    end, { desc = '[N]ext harpoon buffer' })
    vim.keymap.set('n', '<leader>hp', function()
      harpoon:list():prev()
    end, { desc = '[P]revious harpoon buffer' })
  end,
}
