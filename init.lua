require('tony.base')
require('tony.highlights')
require('tony.plugins')
require("bufferline").setup({})

vim.opt.termguicolors = true

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac == 1 then
    require('tony.macos')
end
