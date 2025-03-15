require('lspconfig').clangd.setup{}

return {
  cmd = { 'clangd' },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'c', 'cpp', 'cxx', 'objc', 'objcpp', 'cuda', 'proto'},
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
