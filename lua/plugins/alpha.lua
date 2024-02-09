return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("<C-p>", "󰈞  Find file"),
      dashboard.button("<C-g>", "󰊄  Live grep"),
      dashboard.button(
        "c",
        "  Configuration",
        "<cmd>Telescope find_files search_dirs=~/.config/nvim<CR><cmd>cd ~/.config/nvim/ <CR>"
      ),
      dashboard.button("e", "  New file", "<cmd>ene<CR>"),
      dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
      dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
    }

    return dashboard.opts
  end,
}
