return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local bl = require("bufferline")

    vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<cr>")
    vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<cr>")
    vim.keymap.set("n", "<leader>d", "<cmd>bd<cr>")

    return {
      options = {
        diagnostics = "nvim_lsp",
        style_preset = bl.style_preset.minimal, -- or bufferline.style_preset.minimal,
        show_buffer_close_icons = false,
        show_buffer_icons = false,
        always_show_bufferline = false,
        indicator = {
          style = "none",
        },
      },

      highlights = require("nord.plugins.bufferline").akinsho(),
    }
  end,
}
