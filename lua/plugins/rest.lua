return {
	"rest-nvim/rest.nvim",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	opts = function()
		vim.keymap.set("n", "<leader>rq", "<Plug>RestNvim")

		return {
			result_split_horizontal = true,
			result_split_in_place = true,
		}
	end,
}
