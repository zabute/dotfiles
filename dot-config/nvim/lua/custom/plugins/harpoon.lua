return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = 'VeryLazy',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    -- Slightly modified telescope ui from the docs.
    -- This adds an index in the list for the file so i can filter the list by pressing 1-9
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for index, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, {
          display = string.format('%d: %s', index, item.value),
          path = item.value,
        })
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
            entry_maker = function(entry)
              return {
                value = entry.path,
                display = entry.display,
                ordinal = entry.display,
              }
            end,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<leader>e', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon add current' })

    vim.keymap.set('n', '<leader>x', function()
      harpoon:list():remove()
    end, { desc = 'Harpoon remove current' })

    -- vim.keymap.set('n', '<leader>e', function()
    --   harpoon.ui:toggle_quick_menu(harpoon:list())
    -- end, { desc = 'Toggle Harpoon quick menu' })

    vim.keymap.set('n', '<leader>Q', function()
      harpoon:list():clear()
    end, { desc = 'Harpoon clear all' })

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon select 1' })

    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Toggle harpoon quick menu' })

    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon select 3' })

    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon select 4' })

    vim.keymap.set('n', '<leader>5', function()
      harpoon:list():select(5)
    end, { desc = 'Harpoon select 5' })

    vim.keymap.set('n', '<leader>6', function()
      harpoon:list():select(6)
    end, { desc = 'Harpoon select 6' })

    vim.keymap.set('n', '<leader>7', function()
      harpoon:list():select(7)
    end, { desc = 'Harpoon select 7' })

    vim.keymap.set('n', '<leader>8', function()
      harpoon:list():select(8)
    end, { desc = 'Harpoon select 8' })

    vim.keymap.set('n', '<leader>9', function()
      harpoon:list():select(9)
    end, { desc = 'Harpoon select 9' })
  end,
}
