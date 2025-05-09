return {
    'tomtom/tcomment_vim',
    lazy = false,
    keys = {
        { '<Leader>__', ':TComment<CR>', mode = { 'n' }, desc = 'Toggle commented block' },
        { '<Leader>--', ':TComment<CR>', mode = { 'n' }, desc = 'Toggle commented block' },
    },
}
