local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
	return print("failed to load autopairs")
end

npairs.setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})
