return {
	{ 'nvim-lua/plenary.nvim' },
	{
		'nvim-treesitter/nvim-treesitter',
		event = 'BufReadPre',
		config = function()
			require('plugins.treesitter')
		end,
	},
}

