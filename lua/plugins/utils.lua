vim.opt.termguicolors = true

return {
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = true, -- this is equalent to setup({}) function
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        mode = "virtualtext",
        tailwind = true,
        rgb_fn = true,
        css = true,
      },
    },
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        astro = {
          icon = "",
          cterm_color = "65",
          name = "Astro",
        },
      },
    },
  },

  {
    "alexghergh/nvim-tmux-navigation",
    opts = {
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<M-h>",
        down = "<M-j>",
        up = "<M-k>",
        right = "<M-l>",
        last_active = "<M-\\>",
        next = "<M-Space>",
      },
    },
  },
}
