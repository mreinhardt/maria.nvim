-- Install with: go install github.com/nametake/golangci-lint-langserver@latest

---@type vim.lsp.Config
return {
    cmd = { 'golangci-lint-langserver' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_markers = { '.git', 'go.mod', 'go.work' },
    init_options = {
        command = {
            'golangci-lint',
            'run',
            '--issues-exit-code=1',
            -- v1
            '--out-format=json',
            -- v2
            -- '--output.json.path',
            -- 'stdout',
            -- '--show-stats=false',
        },
    },
}
