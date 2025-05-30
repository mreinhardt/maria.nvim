-- Pretty bufferline.
return {
    {
        'akinsho/bufferline.nvim',
        event = 'VeryLazy',
        opts = {
            options = {
                numbers = 'buffer_id',
                themeable = true,
                color_icons = true,
                separator_style = 'slant',
                truncate_names = false,
                show_buffer_icons = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                show_tab_indicators = true,
                persist_buffer_sort = true,
                move_wraps_at_ends = true,
                sort_by = 'insert_after_current',
                indicator = { style = 'underline' },
                close_command = function(bufnr)
                    require('mini.bufremove').delete(bufnr, false)
                end,
                diagnostics = 'nvim_lsp',
                diagnostics_indicator = function(_, _, diag)
                    local icons = require('icons').diagnostics
                    local indicator = (diag.error and icons.ERROR .. ' ' or '') .. (diag.warning and icons.WARN or '')
                    return vim.trim(indicator)
                end,
            },
        },
        keys = {
            -- Buffer navigation.
            { '<leader>bp', '<cmd>BufferLinePick<cr>', desc = 'Pick a buffer to open' },
            { '<leader>bc', '<cmd>BufferLinePickClose<cr>', desc = 'Select a buffer to close' },
            { '<leader>bl', '<cmd>BufferLineCloseLeft<cr>', desc = 'Close buffers to the left' },
            { '<leader>br', '<cmd>BufferLineCloseRight<cr>', desc = 'Close buffers to the right' },
            { '<leader>bo', '<cmd>BufferLineCloseOthers<cr>', desc = 'Close other buffers' },
            { '<leader>{', '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer left' },
            { '<leader>}', '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer right' },
        },
    },
}
