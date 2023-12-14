require('telescope').setup({
	extensions = {
		gitmoji = {
			action = function(entry)
				local row, col = unpack(vim.api.nvim_win_get_cursor(0))
				local emoji = entry.value.value
				vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { emoji })
				vim.api.nvim_win_set_cursor(0, { row, col + 1 })
			end,
		},
	},
})
