-- Global variables
vim.g.projects_dir = vim.env.HOME .. '/code'
vim.g.personal_projects_dir = vim.g.projects_dir .. '/sandbox'
vim.g.work_projects_dir = vim.g.projects_dir .. '/work'

-- Colorscheme
vim.cmd.colorscheme 'catppuccin-mocha'

-- Set nerd font
vim.g.have_nerd_font = true

-- Install Lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        lazyrepo,
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

---@type LazySpec
local plugins = 'plugins'

-- General setup and goodies
-- (ORDER MATTERS HERE)
require 'settings'
require 'keymaps'
require 'commands'
require 'autocmds'
require 'statusline'
require 'winbar'
require 'lsp'

-- Configure plugins
require('lazy').setup(plugins, {
    ui = { border = 'rounded' },
    dev = { path = vim.g.projects_dir },
    install = {
        -- Do not automatically install on startup
        missing = false,
    },
    -- Don't bother me when tweaking plugins
    change_detection = { notify = false },
    -- None of my plugins use luarocks so disable this
    rocks = {
        enabled = false,
    },
    performance = {
        rtp = {
            -- Stuff I don't use
            disabled_plugins = {
                'gzip',
                'netrwPlugin',
                'rplugin',
                'tarPlugin',
                'tohtml',
                'tutor',
                'zipPlugin',
            },
        },
    },
})

-- Enable the new experimental command-line features
require('vim._extui').enable {}

-- vim: ts=2 sts=2 sw=2 et
