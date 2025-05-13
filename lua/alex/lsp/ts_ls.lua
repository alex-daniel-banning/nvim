require('lspconfig').ts_ls.setup({})
require('lspconfig').eslint.setup({})

-- See https://www.mitchellhanberg.com/modern-format-on-save-in-neovim/
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp", { clear = true }),
  callback = function(args)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format {async = false, id = args.data.client_id }
      end,
    })
  end
})

return {
  cmd = { 'typescript-language-server' },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json' },
  filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
    },
  capabilities = {
	  offsetEncoding = { "utf-8", "utf-16" },
	  textDocument = {
		  completion = {
			  editsNearCursor = true
		  }
	  }
  },
  single_file_support = true
}
