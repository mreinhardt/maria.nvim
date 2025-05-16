-- Match statusline mode colors to the theme.
if vim.g.colors_name == 'moonlight' then
    local colors = require 'moonlight.colors'
    local theme = require 'moonlight.theme'
    local editor = theme.loadEditor()
    vim.api.nvim_set_hl(0, 'StatuslineModeNormal', { fg = editor.NormalMode == nil and colors.accent or (editor.NormalMode.fg or colors.accent) })
    vim.api.nvim_set_hl(0, 'StatuslineModePending', { fg = editor.PendingMode == nil and colors.yellow or (editor.PendingMode.fg or colors.yellow) })
    vim.api.nvim_set_hl(0, 'StatuslineModeVisual', { fg = editor.VisualMode == nil and colors.purple or (editor.VisualMode.fg or colors.purple) })
    vim.api.nvim_set_hl(0, 'StatuslineModeInsert', { fg = editor.InsertMode == nil and colors.green or (editor.InsertMode.fg or colors.green) })
    vim.api.nvim_set_hl(0, 'StatuslineModeCommand', { fg = editor.CommandMode == nil and colors.gray or (editor.CommandMode.fg or colors.gray) })
end
