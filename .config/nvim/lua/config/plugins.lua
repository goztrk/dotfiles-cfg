return {
	{
		'rose-pine/neovim',
		priority = 100,
		name = 'rose-pine',
		config = function()
			require('plugins.rose-pine')
			vim.cmd [[colorscheme rose-pine]]
		end,
	},
	{
		'folke/tokyonight.nvim',
		priority = 100,
		opts = {},
		config = function()
			require('plugins.tokyonight')
			-- This must be after the setup to make it work
			-- vim.cmd[[colorscheme tokyonight]]
		end,
	},
	{ 'nvim-lua/plenary.nvim' },
	{
		'nvim-treesitter/nvim-treesitter',
		event = 'BufReadPre',
		config = function()
			require('plugins.treesitter')
		end,
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		config = false,
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
			{
				'stevearc/conform.nvim',
				opts = {},
				config = function()
					require("plugins.conform")
				end,
			},
		},
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup {
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			}
		end,
		dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
	},
	-- Search motions
	{
		"folke/flash.nvim",
		event = "CmdlineEnter",
		opts = require "plugins.flash",
	},
	{
		'kevinhwang91/nvim-ufo',
		dependencies = { 'kevinhwang91/promise-async' },
		config = function()
			require('plugins.ufo')
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		'github/copilot.vim', },
	{ "theprimeagen/harpoon", },
	{
		"theprimeagen/refactoring.nvim",
		config = function()
			require('plugins.refactoring')
		end,
	},
	{ "mbbill/undotree" },
	{
		'alexghergh/nvim-tmux-navigation',
		opts = {
			keybindings = {
				left = '<C-h>',
				down = '<C-j>',
				up = '<C-k>',
				right = '<C-l>',
				last_active = '<C-\\>',
				next = '<C-Space>',
			},
		},
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				keymaps = {
					normal = '<leader>sa',
					normal_cur = false,
					normal_line = false,
					normal_cur_line = false,
					visual = '<leader>s',
					visual_line = '<leader>S',
					delete = '<leader>sd',
					change = '<leader>sr',
				},
				aliases = {
					['i'] = ']', -- Index
					['r'] = ')', -- Round
					['b'] = '}', -- Brackets
				},
				move_cursor = false,
			})
		end
	},
}
