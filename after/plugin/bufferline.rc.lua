local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end 

bufferline.setup {
    options = {
            style_preset = bufferline.style_preset.no_italic,
        mode = 'tabs',
        --separator_style = 'padded_slope',
        diagnostics = "nvim_lsp",
        color_icons = true,
        diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
            return " " .. icon  .. count
        end
    },
    highlights = {
        separator = {
            guifg = '#073642',
            guibg = '#002b36'
        },
        separator_selected = {
            guifg = '#073642',
            --guibg = '#002b36'
        },
        background = {
            guifg = '#657b83',
            guibg = '#002b36'
        },
        buffer_selected = {
            guifg = '#fdf6e3',
            gui = 'bold',
        },
        fill = {
            guibg = '#073642'
        }
    }

}

vim.api.nvim_set_keymap('n', '<leader>bn', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>bp', '<cmd>BufferLineCyclePrev<cr>', {})
