local arrows = require('icons').arrows

-- Set leaders
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Indent 4 spaces
vim.o.sw = 4
vim.o.ts = 4
vim.o.et = true

-- Show whitespace
vim.opt.list = true
vim.opt.listchars = { space = '⋅', trail = '·', tab = '  ↦', nbsp = '␣' }

-- Set line numbers
vim.opt.number = true
-- Set relative line numbers
vim.opt.relativenumber = true

-- Disable mouse mode
vim.opt.mouse = '' -- 'a' enables

-- Set show mode (false if already in the status line)
vim.opt.showmode = false

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 4

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
-- vim.opt.confirm = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set break indent
vim.opt.breakindent = true

-- Wrap long lines at words
vim.o.linebreak = true

-- Folding
vim.o.foldcolumn = '1'
vim.o.foldlevelstart = 99
vim.wo.foldtext = ''

-- UI characters
vim.opt.fillchars = {
    eob = ' ',
    fold = ' ',
    foldclose = arrows.right,
    foldopen = arrows.down,
    foldsep = ' ',
    msgsep = '─',
}

-- Preview substitutions live as you type
vim.opt.inccommand = 'split'

-- Use rounded borders for floating windows
vim.o.winborder = 'rounded'

-- Sync clipboard between the OS and Neovim
vim.o.clipboard = 'unnamedplus'

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or search has capitals
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Update times and timeouts
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 10

-- Completion
vim.opt.wildignore:append { '.DS_Store' }
vim.o.completeopt = 'menuone,noselect,noinsert'
vim.o.pumheight = 15

-- Diff mode settings
-- Setting the context to a very large number disables folding
vim.opt.diffopt:append 'vertical,context:99'

vim.opt.shortmess:append {
    w = true,
    s = true,
}

-- Status line
vim.o.laststatus = 3
vim.o.cmdheight = 1

-- Disable cursor blinking in terminal mode
vim.o.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block-TermCursor'

-- Disable health checks for these providers.
-- vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
-- vim.g.loaded_node_provider = 0
