return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy', -- Lazy load after the event is triggered
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Ensure icons are available
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      },
    }
  end,
}
