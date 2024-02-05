return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    { "rafamadriz/friendly-snippets" },
    { "L3MON4D3/LuaSnip" },
    { "hrsh7th/cmp-buffer" },
    { "onsails/lspkind.nvim" },
    {
      -- https://youtu.be/_NiWhZeR-MY
      "roobert/tailwindcss-colorizer-cmp.nvim",
      opts = {
        color_square_width = 2,
      },
    },
  },
  config = function()
    -- Here is where you configure the autocompletion settings.
    local lsp_zero = require("lsp-zero")
    lsp_zero.extend_cmp()

    -- And you can configure cmp even more, if you want to.
    local cmp = require("cmp")
    local cmp_action = lsp_zero.cmp_action()
    local format_kinds = require("lspkind").cmp_format({
      mode = "symbol_text", -- show only symbol annotations
      ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
    })

    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "luasnip" },
        { name = "nvim_lua" },
      },
      preselect = "item",
      completion = {
        completeopt = "menu,menuone,noinsert",
      },

      formatting = {
        fields = { "abbr", "kind", "menu" },
        format = function(entry, item)
          format_kinds(entry, item)
          return require("tailwindcss-colorizer-cmp").formatter(entry, item)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
  end,
}
