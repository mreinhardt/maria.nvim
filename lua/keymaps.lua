-- [[BASE]]

-- File edit chortcuts
vim.keymap.set('n', '<Leader>ez', ':e ~/.zsh', { desc = 'Edit zsh files' })

-- Toggles
vim.keymap.set('n', '<Leader>#', ':setlocal number! relativenumber!<CR>')
vim.keymap.set('n', '<Leader>>', ':set paste!<CR>:set paste?<CR>')
vim.keymap.set('n', '<Leader><', ':setlocal wrap!<CR>:setlocal wrap?<CR>')

-- Files
vim.keymap.set('n', '<Leader>F', ':file<CR>')
vim.keymap.set('n', '<Leader>o', ':Explore<CR>')
vim.keymap.set('n', '<Leader>O', ':Yazi<CR>')

-- Quicker jump to top or bottom
vim.keymap.set('n', '<CR>', 'G')
vim.keymap.set('n', '<BS>', 'gg')

-- Tag jump
vim.keymap.set('n', '<Leader>g', 'g<C-]>')

-- Splits
vim.keymap.set('n', '<Leader>sh', ':split<CR>')
vim.keymap.set('n', '<Leader>sv', ':vsplit<CR>')
vim.keymap.set('n', '<Leader>sH', '<C-w>t<C-w>K')
vim.keymap.set('n', '<Leader>sV', '<C-w>t<C-w>H')

-- Buffer movement
vim.keymap.set('n', '<Leader>]', ':bn<CR>')
vim.keymap.set('n', '<Leader>[', ':bp<CR>')
vim.keymap.set('n', '<Leader>b', ':ls<CR>:b<Space>')

-- Move line position
vim.keymap.set('n', '<Leader>j', ':m .+1<CR>==')
vim.keymap.set('n', '<Leader>k', ':m .-2<CR>==')
vim.keymap.set('v', '<Leader>j', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<Leader>k', ":m '<-2<CR>gv=gv")

-- Close HTML tags
vim.keymap.set('i', '<C-c>', '</<C-X><C-O><C-X><Esc>F<i', { silent = true })

-- Toggle tab style
vim.keymap.set('n', '<Leader>tt', ':set noet ci pi sts=0 sw=4 ts=4<CR>')
vim.keymap.set('n', '<Leader>ts', ':set et noci nopi sts=4 sw=4 ts=4<CR>')

-- Trim whitespace
vim.keymap.set('n', '<Leader>wd', ':%s/\\s\\+$//g<CR>')

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
vim.keymap.set('n', '<Leader>S', ':setlocal spell! spelllang=en_us<CR>')

-- ?
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

-- [[NEW]]

-- Remap for dealing with word wrap and adding jumps to the jumplist
vim.keymap.set('n', 'j', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'j']], { expr = true })
vim.keymap.set('n', 'k', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'k']], { expr = true })

-- Keeping the cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll downwards' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll upwards' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next result' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous result' })

-- Indent while remaining in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Paste and re-yank visual selection
vim.keymap.set('n', '<Leader>p', 'pgvy')
vim.keymap.set('n', '<Leader>P', 'Pgvy')

-- Redraw interface
vim.keymap.set('n', '<Leader>r', ':redraw!<CR>')

-- Open the package manager
vim.keymap.set('n', '<leader>L', '<cmd>Lazy<cr>', { desc = 'Lazy' })

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

-- Undo/Redo pairs
vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- Escape and save changes
vim.keymap.set({ 's', 'i', 'n', 'v' }, '<C-s>', '<esc>:w<cr>', { desc = 'Exit insert mode and save changes.' })
vim.keymap.set({ 's', 'i', 'n', 'v' }, '<C-S-s>', '<esc>:wa<cr>', { desc = 'Exit insert mode and save all changes.' })

-- Writes and quits
vim.keymap.set('n', '<Leader>q', ':q<CR>', { desc = 'Quit buffer' })
vim.keymap.set('n', '<Leader>Q', ':qa<CR>', { desc = 'Quit all buffers' })
vim.keymap.set('n', '<Leader>w', ':w<CR>', { desc = 'Write buffer' })
vim.keymap.set('n', '<Leader>W', ':wa<CR>', { desc = 'Write all buffers' })

-- Quickly go to the end of the line while in insert mode
vim.keymap.set({ 'i', 'c' }, '<C-l>', '<C-o>A', { desc = 'Go to the end of the line' })

-- Floating terminal
vim.keymap.set({ 'n', 't' }, '<leader>T', function()
    require('float_term').float_term('fish', { cwd = vim.fn.expand '%:p:h' })
end, { desc = 'Toggle floating terminal' })
