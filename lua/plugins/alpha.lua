return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		local theta = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")

		theta.buttons.val = {
			{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
			{ type = "padding", val = 1 },
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("<C-p>", "󰈞  Find file"),
			dashboard.button("<C-g>", "󰊄  Live grep"),
			dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim/ <CR>"),
			dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
			dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}

		return theta.config
	end,
}
