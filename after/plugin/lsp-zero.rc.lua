local lsp = require("lsp-zero").preset({})

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
	"rust_analyzer",
	"kotlin_language_server",
	"jdtls",
	"html",
	"cssls",
	"cssmodules_ls",
	"clangd",
	"sqlls",
	"jedi_language_server",
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
	local opts = { buffer = bufnr, remap = false }

	-- goto definition
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)

	-- view documentation
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)

	--view diagnostics floating window
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)

	--jump to the next error
	vim.keymap.set("n", "<leader>j", function()
		vim.diagnostic.goto_next()
	end, opts)

	--jump to the previous error
	vim.keymap.set("n", "<leader>k", function()
		vim.diagnostic.goto_prev()
	end, opts)

	--code actions
	vim.keymap.set("n", "<leader>a", function()
		vim.lsp.buf.code_action()
	end, opts)
end)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		["null-ls"] = {
			"typescript",
			"python",
			"sql",
			"typescriptreact",
			"html",
			"json",
			"markdown",
			"javascriptreact",
			"javascript",
			"lua",
			"rust",
			"css",
			"cssmodules",
		},
	},
})

lsp.set_sign_icons({
	error = "🅧",
	warn = "‼",
	hint = "⚑",
	info = "✅",
})

lsp.setup()
