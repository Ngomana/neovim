local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- plugins/telescope.lua:
return {
  "telescope.nvim",
  tag = "0.1.6",
  -- or                              , branch = '0.1.x',
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({})
      end,
      desc = "Find Files",
    },

    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep({})
      end,
      desc = "Live Grep",
    },
    {

      "<leader>fb",
      function()
        require("telescope.builtin").buffers({})
      end,
      desc = "Buffers",
    },
  },
}
