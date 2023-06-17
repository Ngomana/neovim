vim.cmd([[packadd packer.nvim]])
require("mason").setup()
require("mason-lspconfig").setup()

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- plenary
	use("nvim-lua/plenary.nvim")

	--indetation
	use("lukas-reineke/indent-blankline.nvim")

	--lsp kind
	use("onsails/lspkind.nvim")

	--snippets
	use("rafamadriz/friendly-snippets")

	--bufferline
	use("akinsho/nvim-bufferline.lua")

	--git signs
	use("lewis6991/gitsigns.nvim")

	--file broswer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
			"echasnovski/mini.base16",
			"antosha417/nvim-lsp-file-operations",
		},
	})

	-- auto tag
	use("windwp/nvim-ts-autotag")

	--which key
	-- Lua
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

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Lsp-zero
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
	--code completion
	use("hrsh7th/nvim-cmp")

	-- gruvbox
	use("morhetz/gruvbox")
	--
	use({ "tpope/vim-dispatch", opt = true, cmd = { "Dispatch", "Make", "Focus", "Start" } })

	--mason
	use({
		"williamboman/mason.nvim",
		run = ":MasonUpdate", -- :MasonUpdate updates registry contents
	})

	use({
		"williamboman/mason-lspconfig.nvim",
	})

	-- my previous config
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	--null ls
	use("jose-elias-alvarez/null-ls.nvim")

	-- my previous vim configuration
	use("https://github.com/altercation/vim-colors-solarized.git")
	use("preservim/nerdcommenter")
	use("ryanoasis/vim-devicons")
	use({ "christoomey/vim-tmux-navigator" })

	-- auot pairs, auto opening and closing brackets
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
end)
