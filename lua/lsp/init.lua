local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-null-ls").setup({
    automatic_setup = true,
})
require("null-ls").setup()
require 'mason-null-ls'.setup_handlers()

--require("lsp.null-ls")
require"lspconfig".clangd.setup{}
require"lspconfig".pyright.setup{}
