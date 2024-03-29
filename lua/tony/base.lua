vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.g.mapleader = " "

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

vim.keymap.set("n", "<leader>bn", function()
	vim.cmd("bnext")
end)
vim.keymap.set("n", "<leader>bp", function()
	vim.cmd("bprevious")
end)

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("syntax enable")
vim.cmd("set mouse=a")
vim.cmd("set autoindent")
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme neosolarized")
vim.cmd("set encoding=utf-8")
vim.opt.updatetime = 300
vim.cmd(":set formatoptions-=cro")
