return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {
        "lua",

        "html",
        "css",
        "javascript",
        "json",
        "typescript",
        "tsx",

        "python",
        "go",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
