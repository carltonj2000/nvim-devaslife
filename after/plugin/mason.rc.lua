local status, mason = pcall(require, "mason")
if not status then
	return
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if not status2 then
	return
end

mason.setup({})

lspconfig.setup({
	automatic_installation = true,
	ensure_installed = {
		"cssls",
		"cssmodules_ls",
		"dockerls",
		"gopls",
		"html",
		"marksman",
		"rust_analyzer",
		"sumneko_lua",
		"tailwindcss",
		"tsserver",
	},
})
