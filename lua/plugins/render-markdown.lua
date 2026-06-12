-- Render markdown in the buffer.
return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        ft = 'markdown',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            {
                '<leader>md',
                ft = 'markdown',
                '<cmd>RenderMarkdown toggle<cr>',
                desc = 'Toggle Render Markdown',
            },
        },
        opts = {
            enabled = false,
        },
    },
}
