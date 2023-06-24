local status, autotag = pcall(require, "nvim-ts-autotag")
if not status then
	return print("nvim auto tag failed to load")
end

autotag.setup({})
