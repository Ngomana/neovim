local status, telescope = pcall(require, "telescope")
if not status then
	return print("telescope not loaded")
end
telescope.setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
		},
	},
})
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<C-p>", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
