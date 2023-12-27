return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp"
      }
    })

    vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<cr>")
    vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<cr>")
    vim.keymap.set("n", "<leader>d", "<cmd>bd<cr>")
  end
}
