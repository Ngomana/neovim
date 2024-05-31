require("config.lazy")
-- init.lua or a separate configuration file
vim.g.lazyVim_transparent_background = true

-- Function to apply the transparent background settings
local function set_transparent_background()
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
  vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
  vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
  vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
  -- Add more highlight groups if needed
end

-- Apply the settings if transparent background is enabled
if vim.g.lazyVim_transparent_background then
  -- Use an autocmd to ensure it runs after the UI has loaded
  vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = set_transparent_background,
  })
end
