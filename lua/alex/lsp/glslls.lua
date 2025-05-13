require('lspconfig').glslls.setup{}

return {
    cmd = {'glslls', '--stdin'},
    filetypes = { "glsl", "vert", "tesc", "tese", "frag", "geom", "comp" },
    capabilities = {
        offsetEncoding = { "utf-8", "utf-16" },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        },
        root_dir = function(fname)
            return vim.fs.dirname(vim.fs.find('.git', {path = fname, upward = true})[1])
        end,
        single_file_support = true
    }
}
