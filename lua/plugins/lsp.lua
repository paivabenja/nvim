return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		lazy = true,
		config = false,
		init = function()
			-- Disable automatic setup, we are doing it manually
			vim.g.lsp_zero_extend_cmp = 0
			vim.g.lsp_zero_extend_lspconfig = 0
		end,
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = true,
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		cmd = { "LspInfo", "LspInstall", "LspStart" },
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "williamboman/mason-lspconfig.nvim" },
		},

		config = function()
			-- This is where all the LSP shenanigans will live
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_lspconfig()

			--- if you want to know more about lsp-zero and mason.nvim
			--- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = false })
				vim.keymap.set("n", "gr", "<cmd> Telescope lsp_references<cr>", { buffer = bufnr })
				vim.keymap.set("n", "<space>f", function()
					vim.lsp.buf.format({ async = false })
				end, { buffer = bufnr })
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { buffer = bufnr })
				vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { buffer = bufnr })
			end)

			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",

					"astro",
					"tsserver",
					"tailwindcss",
					"eslint",
					"cssls",
					"jqls",
					"jsonls",

					"gopls",

					"pyright",
				},
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						-- (Optional) Configure lua language server for neovim
						local lua_opts = lsp_zero.nvim_lua_ls()
						require("lspconfig").lua_ls.setup(lua_opts)
					end,

					tsserver = function()
						require("lspconfig").tsserver.setup({
							on_init = function(client)
								client.server_capabilities.documentFormattingProvider = false
								client.server_capabilities.documentFormattingRangeProvider = false
							end,
						})
					end,

					astro = function()
						require("lspconfig").astro.setup({
							init_options = {
								typescript = {
									tsdk = vim.fs.normalize("~/.bun/install/global/node_modules/typescript/lib"),
								},
							},
						})
					end,
				},
			})
		end,
	},
}
