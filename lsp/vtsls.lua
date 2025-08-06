-- Install with: npm install -g @vtsls/language-server

local ignored_codes = {
    [6133] = true,
    [6385] = true,
}

local jsts_settings = {
    suggest = { completeFunctionCalls = true },
    inlayHints = {
        functionLikeReturnTypes = { enabled = true },
        parameterNames = { enabled = 'literals' },
        variableTypes = { enabled = true },
    },
}

local function get_global_tsdk()
    -- Use VS Code's bundled copy if available.
    local vscode_tsdk_path = '/Applications/%s/Contents/Resources/app/extensions/node_modules/typescript/lib'
    local vscode_tsdk = vscode_tsdk_path:format 'Visual Studio Code.app'
    local vscode_insiders_tsdk = vscode_tsdk_path:format 'Visual Studio Code - Insiders.app'

    if vim.fn.isdirectory(vscode_tsdk) == 1 then
        return vscode_tsdk
    elseif vim.fn.isdirectory(vscode_insiders_tsdk) == 1 then
        return vscode_insiders_tsdk
    else
        return nil
    end
end

---@type vim.lsp.Config
return {
    cmd = { 'vtsls', '--stdio' },
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    root_dir = function(bufnr, cb)
        local fname = vim.uri_to_fname(vim.uri_from_bufnr(bufnr))

        local ts_root = vim.fs.find('tsconfig.json', { upward = true, path = fname })[1]
        -- Use the git root to deal with monorepos where TypeScript is installed in the root node_modules folder.
        local git_root = vim.fs.find('.git', { upward = true, path = fname })[1]

        if git_root then
            cb(vim.fn.fnamemodify(git_root, ':h'))
        elseif ts_root then
            cb(vim.fn.fnamemodify(ts_root, ':h'))
        end
    end,
    handlers = {
        -- filter out ignored diagnostics
        ['textDocument/publishDiagnostics'] = function(_, result, ctx)
            -- require 'vim.lsp.log'
            if result and result.diagnostics then
                result.diagnostics = vim.iter(result.diagnostics)
                    :filter(function(d)
                        -- Ignore diagnostics with specific codes
                        if not (ignored_codes[d.code] == nil) then
                            return false
                        end
                        return true

                        -- -- Ignore diagnostics with @ts-ignore comments
                        -- if d.bufnr == nil then
                        --     return true
                        -- end
                        -- local start_line = d.lnum
                        -- local end_line = d.end_lnum
                        -- local lines = vim.api.nvim_buf_get_lines(d.bufnr, start_line, end_line + 1, false)
                        -- local source_code_text = table.concat(lines, '\n')
                        -- local msg = string.format('%s: %s', 'source_code_text', source_code_text)
                        -- -- vim.notify(msg, vim.log.levels.INFO)
                        -- -- vim.notify('source_code_text: ' .. source_code_text, vim.log.levels.INFO)
                        -- print(msg)
                        -- return string.find(source_code_text, '@ts-ignore') == nil
                    end)
                    :totable()
            end

            return vim.lsp.handlers['textDocument/publishDiagnostics'](_, result, ctx)
        end,
    },
    settings = {
        typescript = jsts_settings,
        javascript = jsts_settings,
        vtsls = {
            typescript = {
                globalTsdk = get_global_tsdk(),
            },
            -- Automatically use workspace version of TypeScript lib on startup.
            autoUseWorkspaceTsdk = true,
            experimental = {
                -- Inlay hint truncation.
                maxInlayHintLength = 30,
                -- For completion performance.
                completion = {
                    enableServerSideFuzzyMatch = true,
                },
            },
        },
    },
}
