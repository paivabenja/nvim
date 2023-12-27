-- See plugin/colorscheme.lua for installed options
vim.cmd([[colorscheme catppuccin]])

-- vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.smartcase = false  -- Don't ignore case with capitals
vim.opt.smartindent = true -- Insert indents automatically

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.colorcolumn = "100"

vim.opt.spelllang = { "en", "es" }

vim.diagnostic.config({
  float = { border = "rounded" },
})

-- borders for hover
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})
