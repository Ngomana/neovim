-- lua/plugins/nerdcommenter.lua

return {
  "preservim/nerdcommenter",
  config = function()
    -- Set NERD Commenter options here if needed
    vim.g.NERDCreateDefaultMappings = 1
    vim.g.NERDSpaceDelims = 1
    vim.g.NERDCommentEmptyLines = 1
    vim.g.NERDTrimTrailingWhitespace = 1

    -- Define key mappings for NERDCommenter
    vim.keymap.set("n", "<leader>cn", "<Plug>NERDCommenterComment", { desc = "Comment toggle" })
    vim.keymap.set("n", "<leader>cu", "<Plug>NERDCommenterUncomment", { desc = "Uncomment" })
    vim.keymap.set("v", "<leader>cn", "<Plug>NERDCommenterComment", { desc = "Comment toggle" })
    vim.keymap.set("v", "<leader>cu", "<Plug>NERDCommenterUncomment", { desc = "Uncomment" })
  end,
}
