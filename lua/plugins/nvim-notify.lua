return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<C-l>",
      function()
        vim.cmd([[nohlsearch|diffupdate|normal! <C-L><CR>]])
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss all Notifications",
    },
  },
}
