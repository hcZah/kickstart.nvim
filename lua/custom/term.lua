-- [[ Options for nvim's builtin terminal ]]

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
    vim.cmd ':start'
  end,
})

vim.keymap.set('n', '<leader>st', function()
  vim.cmd ':sp'
  vim.cmd ':res 10'
  vim.cmd ':term'
end, { desc = 'Open [S]mall [T]erminal' })

vim.keymap.set('n', '<leader>bt', function()
  vim.cmd ':term'
end, { desc = 'Open [B]ig [T]erminal' })
