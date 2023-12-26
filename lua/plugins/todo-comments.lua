return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  -- TODO: kuikfics
  config = function()
    require("todo-comments").setup({})
    vim.keymap.set('n', '<C-t>', ':TodoTelescope<CR>')
  end
}
