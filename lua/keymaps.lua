-- [[BASE]]

-- File edit chortcuts
vim.keymap.set('n', '<Leader>ze', ':e ~/.zsh<CR>', { desc = 'Edit zsh files' })

-- Toggles
vim.keymap.set('n', '<Leader>#', ':setlocal number! relativenumber!<CR>', { desc = 'Toggle line numbers' })
vim.keymap.set('n', '<Leader>>', ':set paste!<CR>:set paste?<CR>', { desc = 'Toggle paste mode' })
vim.keymap.set('n', '<Leader><', ':setlocal wrap!<CR>:setlocal wrap?<CR>', { desc = 'Toggle wrap' })

-- Files
vim.keymap.set('n', '<Leader>F', ':file<CR>', { desc = 'Display filename' })

-- Tag jump
vim.keymap.set('n', '<Leader>tg', 'g<C-]>', { desc = 'Jump to tag' })

-- Splits
vim.keymap.set('n', '<Leader>sh', ':split<CR>', { desc = 'Create horizontal split' })
vim.keymap.set('n', '<Leader>sv', ':vsplit<CR>', { desc = 'Create vertical split' })
vim.keymap.set('n', '<Leader>sH', '<C-w>t<C-w>K', { desc = 'Change layout to horizontal split' })
vim.keymap.set('n', '<Leader>sV', '<C-w>t<C-w>H', { desc = 'Change layout to veritcal split' })

-- Buffer movement
vim.keymap.set('n', '<Leader>.', ':bn<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<Leader>,', ':bp<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<Leader>l', ':ls<CR>:b<Space>', { desc = 'List buffers and select' })
vim.keymap.set('n', '<Leader>1', ':1b<CR>', { desc = 'Go to buffer 1' })
vim.keymap.set('n', '<Leader>2', ':2b<CR>', { desc = 'Go to buffer 2' })
vim.keymap.set('n', '<Leader>3', ':3b<CR>', { desc = 'Go to buffer 3' })
vim.keymap.set('n', '<Leader>4', ':4b<CR>', { desc = 'Go to buffer 4' })
vim.keymap.set('n', '<Leader>5', ':5b<CR>', { desc = 'Go to buffer 5' })
vim.keymap.set('n', '<Leader>6', ':6b<CR>', { desc = 'Go to buffer 6' })
vim.keymap.set('n', '<Leader>7', ':7b<CR>', { desc = 'Go to buffer 7' })
vim.keymap.set('n', '<Leader>8', ':8b<CR>', { desc = 'Go to buffer 8' })
vim.keymap.set('n', '<Leader>9', ':9b<CR>', { desc = 'Go to buffer 9' })

-- Move line position
vim.keymap.set('n', '<Leader>j', ':m .+1<CR>==', { desc = 'Move line content down' })
vim.keymap.set('n', '<Leader>k', ':m .-2<CR>==', { desc = 'Move line content up' })
vim.keymap.set('v', '<Leader>j', ":m '>+1<CR>gv=gv", { desc = 'Move visual selection content down a line' })
vim.keymap.set('v', '<Leader>k', ":m '<-2<CR>gv=gv", { desc = 'Move visual selection content up a line' })

-- Toggle tab style
vim.keymap.set('n', '<Leader>tt', ':set noet ci pi sts=0 sw=4 ts=4<CR>', { desc = 'Change tab indent to tab' })
vim.keymap.set('n', '<Leader>ts', ':set et noci nopi sts=4 sw=4 ts=4<CR>', { desc = 'Change tab indent to spaces' })

-- Trim trailing whitespace
vim.keymap.set('n', '<Leader>tw', ':%s/\\s\\+$//g<CR>', { desc = 'Trim trailing whitespace' })

-- emacs style command line movements
vim.keymap.set('c', '<C-a>', '<Home>')
vim.keymap.set('c', '<C-e>', '<End>')
vim.keymap.set('c', '<C-b>', '<Left>')
vim.keymap.set('c', '<C-f>', '<Right>')
vim.keymap.set('c', '<C-d>', '<Delete>')
vim.keymap.set('c', '<M-b>', '<S-Left>')
vim.keymap.set('c', '<M-f>', '<S-Right>')
vim.keymap.set('c', '<M-d>', '<S-right><Delete>')
vim.keymap.set('c', '<Esc>b', '<S-Left>')
vim.keymap.set('c', '<Esc>f', '<S-Right>')
vim.keymap.set('c', '<Esc>d', '<S-right><Delete>')
vim.keymap.set('c', '<C-g>', '<C-c>')
vim.keymap.set('c', '<C-a>', '<Home>')

-- Toglge splelchek
vim.keymap.set('n', '<Leader>S', ':setlocal spell! spelllang=en_us<CR>', { desc = 'Toglge splelchek' })

-- ?
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

-- [[NEW]]

-- Remap for dealing with word wrap and adding jumps to the jumplist and centering
vim.keymap.set('n', 'j', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'jzz']], { expr = true })
vim.keymap.set('n', 'k', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'kzz']], { expr = true })

-- Keeping the cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll downwards' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll upwards' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next result' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous result' })

-- Indent while remaining in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Indent single line without visual mode
vim.keymap.set('n', '<<', 'V<')
vim.keymap.set('n', '>>', 'V>')

-- Paste and re-yank visual selection
vim.keymap.set('n', '<Leader>p', 'pgvy', { desc = 'Paste ahead and keep text' })
vim.keymap.set('n', '<Leader>P', 'Pgvy', { desc = 'Paste behind and keep text' })

-- Redraw screen
vim.keymap.set('n', '<Leader>r', ':redraw!<CR>', { desc = 'Redraw screen' })

-- Open the package manager
vim.keymap.set('n', '<leader>L', '<cmd>Lazy<cr>', { desc = 'Open Lazy' })

-- Switch between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to the left window', remap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to the bottom window', remap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to the top window', remap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to the right window', remap = true })

-- Move window position
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Powerful <esc>
vim.keymap.set({ 'i', 's', 'n' }, '<esc>', function()
    if require('luasnip').expand_or_jumpable() then
        require('luasnip').unlink_current()
    end
    vim.cmd 'nohlsearch'
    return '<esc>'
end, { desc = 'Escape, clear hlsearch, and stop snippet session', expr = true })

-- Clear search
vim.keymap.set('n', '<Leader>/', ':let @/ = ""<CR>', { desc = 'Clear search pattern' })

-- Undo/Redo pairs
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Escape and save changes
vim.keymap.set({ 's', 'i', 'n', 'v' }, '<C-s>', '<esc>:w<cr>', { desc = 'Exit insert mode and save changes.' })
vim.keymap.set({ 's', 'i', 'n', 'v' }, '<C-S-s>', '<esc>:wa<cr>', { desc = 'Exit insert mode and save all changes.' })

-- Other writes and quits
vim.keymap.set('n', '<Leader>q', ':q<CR>', { desc = 'Close single buffer' })
vim.keymap.set('n', '<Leader>Q', ':qa<CR>', { desc = 'Quit all buffers' })
vim.keymap.set('n', '<Leader>w', ':w<CR>', { desc = 'Write buffer' })
vim.keymap.set('n', '<Leader>A', ':wa<CR>', { desc = 'Write all buffers' })
vim.keymap.set('n', '<Leader>W', ':wa<CR>:qa<CR>', { desc = 'Write all buffers and quit' })
vim.keymap.set('n', '<Leader>X', ':wa<CR>:qa<CR>', { desc = 'Write all buffers and quit' })

-- Quickly go to the end of the line while in insert mode
vim.keymap.set({ 'i', 'c' }, '<C-e>', '<C-o>A', { desc = 'Go to the end of the line' })
vim.keymap.set({ 'i', 'c' }, '<C-a>', '<C-o>I', { desc = 'Go to the start of the line' })

-- Floating terminal
vim.keymap.set({ 'n', 't' }, '<leader>T', function()
    require('float_term').float_term('zsh', { cwd = vim.fn.expand '%:p:h' })
end, { desc = 'Toggle floating terminal' })
