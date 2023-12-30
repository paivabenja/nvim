local bg = vim.api.nvim_get_hl_by_name("Normal", false)

return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			component_separators = " ",
			section_separators = { left = " ", right = " " },
		},
	},
}
