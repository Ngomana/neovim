-- plugins/colourscheme.lua

-- Define the table of specifications for the colorscheme
return {
  -- Example colorscheme plugin
  {
    "gruvbox-community/gruvbox",
    config = function()
      -- Set gruvbox as the colorscheme
      vim.cmd("colorscheme gruvbox")
      -- Set transparent background if specified
      if vim.g.lazyVim_transparent_background then
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
      end
    end,
  },
}
