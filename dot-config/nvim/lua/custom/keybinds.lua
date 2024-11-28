return {
  vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', 'G', 'Gzz', { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<leader>oi', '<cmd>TSToolsOrganizeImports<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<leader>si', '<cmd>TSToolsSortImports<CR>', { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', 'G', 'Gzz', { noremap = true, silent = true }),
}
