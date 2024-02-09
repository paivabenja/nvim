return {
  "michaelb/sniprun",
  branch = "master",

  build = "sh install.sh",
  -- do 'sh install.sh 1' if you want to force compile locally
  -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

  config = function()
    require("sniprun").setup({
      display = {
        "Classic",
      },
    })

    vim.keymap.set("n", "<leader>cn", "<Plug>SnipRunOperator", { silent = true })
    vim.keymap.set(
      "n",
      "<leader>cf",
      ":let b:caret=winsaveview() <CR> | :%SnipRun <CR>| :call winrestview(b:caret) <CR>",
      {}
    )
    vim.keymap.set({ "n", "v" }, "<leader>cc", "<Plug>SnipRun", { silent = true })
  end,
}
