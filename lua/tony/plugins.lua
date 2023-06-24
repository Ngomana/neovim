local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])
require("mason").setup()
require("mason-lspconfig").setup()

packer.startup(function(use)
	--packer base configuration
	use("wbthomason/packer.nvim")
	use({ "svrana/neosolarized.nvim" })
	use("tjdevries/colorbuddy.nvim")

	--lsp saga
	use({
		"glepnir/lspsaga.nvim",
		opt = true,
		branch = "main",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({})
		end,
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			--Please make sure you install markdown and markdown_inline parser
			{ "nvim-treesitter/nvim-treesitter" },
		},
	})

	--new configuration 2023, final
	--lua line
	use("nvim-lualine/lualine.nvim")

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
	})

	-- vim fugitive
	use("tpope/vim-fugitive")

	-- masson server manager
	use({
		"williamboman/mason.nvim",
		run = ":MasonUpdate", -- :MasonUpdate updates registry contents
	})

	use({
		"williamboman/mason-lspconfig.nvim",
	})

	-- lsp config
	use("neovim/nvim-lspconfig")

	-- lsp kind pictograms
	use("onsails/lspkind.nvim")

	-- auto complete tool
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	--snippent engine
	use("L3MON4D3/LuaSnip")

	-- my previous config
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("mbbill/undotree")
	--null ls
	use("jose-elias-alvarez/null-ls.nvim")

	-- my previous vim configuration
	use("https://github.com/altercation/vim-colors-solarized.git")
	use("preservim/nerdcommenter")
	use("kyazdani42/nvim-web-devicons")
	use({ "christoomey/vim-tmux-navigator" })
	--bufferline
	use("akinsho/nvim-bufferline.lua")

	use("nvim-lua/plenary.nvim")

	--indetation
	use("lukas-reineke/indent-blankline.nvim")

	-- auot pairs, auto opening and closing brackets
	use({
		"windwp/nvim-autopairs",
	})

	use("windwp/nvim-ts-autotag")

	--which key
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	--git signs
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame & browse

	--file broswer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
			"echasnovski/mini.base16",
			"antosha417/nvim-lsp-file-operations",
		},
	})

	-- import cost
	use("yardnsm/vim-import-cOst")

	-- colorized
	use("norcalli/nvim-colorizer.lua")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
end)
