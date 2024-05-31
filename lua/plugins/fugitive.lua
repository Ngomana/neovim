-- lua/plugins/fugitive.lua

return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
    vim.keymap.set("n", "<leader>gp", function()
      vim.cmd("Git push")
    end, { desc = "Git push" })
    vim.keymap.set("n", "<leader>gc", function()
      vim.cmd("Git commit")
    end, { desc = "Git commit" })
  end,
}
