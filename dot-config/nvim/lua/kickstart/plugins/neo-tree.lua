-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        position = 'current',
        follow_current_file = true, -- optional, focuses on current file
        hijack_netrw_behavior = 'open_default', -- replace netrw with Neo-tree
        popup_border_style = 'none',
        width = vim.o.columns, -- set to full width
        height = vim.o.lines,
        title = '',
        padding = { left = 0, right = 0, top = 0, bottom = 0 },
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    default_component_configs = {
      indent = {
        padding = 0, -- reduces internal padding
      },
    },
  },
}
