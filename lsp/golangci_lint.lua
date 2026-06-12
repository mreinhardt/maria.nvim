-- Install with: go install github.com/nametake/golangci-lint-langserver@latest

---@type vim.lsp.Config
return {
    cmd = { 'golangci-lint-langserver' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_markers = { '.git', 'go.mod', 'go.work' },
    init_options = {
        -- Version-aware shim (golangci-lint-lsp, installed from dotfiles/bin): detects v1
        -- vs v2 from the project's .golangci config and runs the matching mise-managed
        -- binary with the matching JSON output flags. Both majors emit the same issue
        -- schema, so the langserver parses either. See the script for details.
        -- The shim already invokes `golangci-lint run`; do not add `run` here or it
        -- becomes a stray path argument.
        command = {
            'golangci-lint-lsp',
        },
    },
}
