return {
	{
		"williamboman/mason.nvim",
    opts = {
			ensure_installed = {
				"lua_ls",
        "stylua",

				"tsserver",
				"tailwindcss",
				"prettierd",
				"eslint-lsp",

				"gopls",
				"goimports",
			},
    }
	},

	{
		"williamboman/mason-lspconfig.nvim",
	},
}
