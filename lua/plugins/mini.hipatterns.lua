return {
    'echasnovski/mini.hipatterns',
    config = function()
        local hipatterns = require 'mini.hipatterns'
        hipatterns.setup {
            highlighters = {
                -- Highlight hex color literals
                hex_color = hipatterns.gen_highlighter.hex_color(),

                -- Highlight comment patterns
                fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
                hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
                todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
                note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
            },
        }
    end,
}
