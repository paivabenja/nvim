return {
  "nvimtools/none-ls.nvim",
  opts = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    local opts = {
      sources = {
        null_ls.builtins.formatting.goimports
      },
    }
    return opts
  end
}
