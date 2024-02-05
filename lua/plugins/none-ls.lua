return {
	"nvimtools/none-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")
		-- local diagnostics = null_ls.builtins.diagnostics
		local formatting = null_ls.builtins.formatting

		local sources = {
			formatting.goimports,
			formatting.prettierd.with({
				extra_args = { "--single-quote" },
				extra_filetypes = { "astro" },
			}),
			formatting.stylua,
			formatting.autopep8,
		}

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		local opts = {
			sources = sources,
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		}

		return opts
	end,
}
