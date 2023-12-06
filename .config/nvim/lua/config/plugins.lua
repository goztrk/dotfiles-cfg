return {
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 100,
		opts = {},
		config = function()
			require('plugins.tokyonight')
			-- This must be after the setup to make it work
			vim.cmd[[colorscheme tokyonight]]
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
		lazy = false,
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
	},
	{
		'averms/black-nvim',
		lazy = false,
	},
	{'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false,
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{ 'hrsh7th/cmp-nvim-lsp' },
			{
				'stevearc/conform.nvim',
				opts = {},
				config = function()
					require("plugins.conform")
				end,
			},
			-- {
			-- 	"pmizio/typescript-tools.nvim",
			-- 	dependencies = { "nvim-lua/plenary.nvim" },
			-- 	opts = {},
			-- }
		},
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{ 'L3MON4D3/LuaSnip' },
		},
	},
	{
    "numToStr/Comment.nvim",
		lazy = false,
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
		lazy = false,
    event = "CmdlineEnter",
    opts = require "plugins.flash",
  },
	{
		'kevinhwang91/nvim-ufo',
		lazy = false,
		dependencies = { 'kevinhwang91/promise-async' },
		config = function()
			require('plugins.ufo')
		end,
	},
}

