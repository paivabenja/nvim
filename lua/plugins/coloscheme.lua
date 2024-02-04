return {
  -- {
  -- 	"folke/tokyonight.nvim",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- 	opts = {
  -- 		style = "night",
  -- 	},
  -- },

  {
    "navarasu/onedark.nvim",
    opts = {
      lualine = {
        transparent = true,
      },

      code_style = {
        comments = "italic",
        keywords = "italic",
        functions = "italic",
        strings = "italic",
        variables = "italic",
      },

      ending_tildes = true,
    },
  },

  -- { "monsonjeremy/onedark.nvim", branch = "treesitter" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "frappe",
      transparent_background = true,
    },
  },

  -- 	{
  -- 		"Mofiqul/dracula.nvim",
  -- 		priority = 1000,
  -- 	},

  -- {
  -- 	"shaunsingh/nord.nvim",
  -- 	config = function()
  -- 		vim.g.nord_bold = true
  -- 		vim.g.nord_italic = true
  -- 		vim.g.nord_contrast = true
  -- 		vim.g.nord_borders = false
  -- 	end,
  -- },

  -- {
  -- 	"gbprod/nord.nvim",
  -- 	priority = 1000,
  -- 	opts = {},
  -- },

  --   {
  --     "ellisonleao/gruvbox.nvim",
  --     priority = 1000,
  --     opts = {
  --       contrast = "hard",
  --       italic = {
  --         strings = true,
  --         emphasis = true,
  --         comments = true,
  --         operators = true,
  --         folds = true,
  --       },
  --     },
  --   },
}
