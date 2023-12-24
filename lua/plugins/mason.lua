return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "lua_ls",

        "typescript-languaje-server",
        "tailwindcss-languaje-server",
        "eslint-lsp",
        "prettierd",

        "gopls",
        "goimports",
      }
    }
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {}
  },
}
