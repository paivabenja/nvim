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
				"astro",

				"python",
				"go",

				"http",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
