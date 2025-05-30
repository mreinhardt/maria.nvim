---@brief
--- https://github.com/astral-sh/ruff
--- A Language Server Protocol implementation for Ruff, an extremely fast Python linter and code formatter, written in Rust. It can be installed via `pip`.
--- pip install ruff
--- Refer to the [documentation](https://docs.astral.sh/ruff/editors/) for more details.

return {
    cmd = { 'ruff', 'server' },
    filetypes = { 'python' },
    root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
    settings = {},
}
