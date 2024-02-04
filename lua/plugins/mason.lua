return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "stylua",

      "astro",
      "tsserver",
      "tailwindcss",
      "prettierd",
      "prettier",
      "eslint-lsp",

      "gopls",
      "goimports",

      "autopep8",
      "pyright",
    },
  },
}
