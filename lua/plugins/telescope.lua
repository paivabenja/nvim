return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local tel_builtin = require("telescope.builtin")

      vim.keymap.set("n", "<C-p>", tel_builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", tel_builtin.live_grep, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim", tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        extensions = {
          ['ui-select'] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })

      local builtin = require("telescope.builtin")

      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

      require("telescope").load_extension("ui-select")
    end
  },
}