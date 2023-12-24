return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      -- theme = 'dracula',
      component_separators = ' ',
      section_separators = { left = '', right = '' },
    },

    -- "inpired by" (copied from)  
    -- https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/bubbles.lua
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '' }, right_padding = 2 },
      },
      lualine_b = { 'filename', 'branch' },
      lualine_c = { 'fileformat' },
      lualine_x = {},
      lualine_y = { 'filetype', 'progress' },
      lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 },
      },
    },
  },
}
