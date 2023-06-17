local status, n_tree = pcall(require, "nvim-tree")
if not status then
	return
end

n_tree.setup({
	vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", { silent = true }),
	vim.keymap.set("n", "<leader>e", ":NvimTreeFindFile<CR>", { silent = true }),
	disable_netrw = false,
	filters = {
		custom = { ".git$", ".pyc$", "__pycache__" },
	},
	renderer = {
		special_files = {},
	},
	on_attach = function(bufnr)
		local api = require("nvim-tree.api")

		-- Default mappings
		api.config.mappings.default_on_attach(bufnr)
	end,
})
