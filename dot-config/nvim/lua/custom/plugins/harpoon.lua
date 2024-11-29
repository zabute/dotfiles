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

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():select(1)
    end)

    vim.keymap.set('n', '<leader>s', function()
      harpoon:list():select(2)
    end)

    vim.keymap.set('n', '<leader>d', function()
      harpoon:list():select(3)
    end)

    vim.keymap.set('n', '<leader>f', function()
      harpoon:list():select(4)
    end)
  end,
}
