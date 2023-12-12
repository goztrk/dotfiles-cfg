local M = {}
local command = vim.api.nvim_create_user_command

command("Format", function(args)
	local status_ok, conform = pcall(require, "conform")
	if not status_ok then
		return vim.notify "conform.nvim isn't installed!!!"
	end

	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	conform.format { async = true, lsp_fallback = true, range = range }
	vim.notify("Format Done", vim.log.levels.INFO, { title = "Format" })
end, { nargs = "*", desc = "Code Format", range = true })


-- This is for `pyright`. I did not like it but keeping this for now.
-- Determine and use virtualenv if exist
M.get_python_path = function(workspace)
	local path = require('lspconfig.util').path
	-- Use activated virtualenv.
	if vim.env.VIRTUAL_ENV then
		return path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
	end

	local match = vim.fn.glob(path.join(workspace, 'venv', 'pyvenv.cfg'))
	if match ~= '' then
		return path.join(path.dirname(match), 'bin', 'python')
	end

	return exepath('python3') or exepath('python') or 'python'
end

return M
