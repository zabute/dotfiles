return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = 'VeryLazy',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)

    vim.keymap.set('n', '<leader>r', function()
      harpoon:list():remove()
    end)

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-q>', function()
      harpoon:list():clear()
    end)

    vim.keymap.set('n', '<C-a>', function()
      harpoon:list():select(1)
      vim.cmd 'normal! zz'
    end)

    vim.keymap.set('n', '<C-s>', function()
      harpoon:list():select(2)
      vim.cmd 'normal! zz'
    end)

    vim.keymap.set('n', '<C-d>', function()
      harpoon:list():select(3)
      vim.cmd 'normal! zz'
    end)

    vim.keymap.set('n', '<C-f>', function()
      harpoon:list():select(4)
      vim.cmd 'normal! zz'
    end)
  end,
}
