local keymap = vim.keymap.set
local silent = { silent = true }

-- H for easy moving to the first non-blank character of the line
keymap('n', 'H', '^', silent)
-- There is not much difference between L and $ so no need for now
-- keymap('n', 'L', '$', silent)

-- Keep visual mode while indenting
keymap('v', '<', '<gv', silent)
keymap('v', '>', '>gv', silent)

-- Easy move lines in visual mode
keymap('x', 'K', ":move '<-2<CR>gv=gv", silent)
keymap('x', 'J', ":move '>+2<CR>gv=gv", silent)

-- Keep cursor in the center when scrolling
keymap('n', '<C-u>', '<C-u>zz', silent)
keymap('n', '<C-d>', '<C-d>zz', silent)

-- Keep cursor in the center when searching
keymap('n', 'n', 'nzzzv', silent)
keymap('n', 'N', 'Nzzzv', silent)

-- Save file with CTRL-S
keymap('n', '<C-s>', ':w<CR>')
keymap('i', '<C-s>', '<ESC>:w<CR>')

-- Don't yank on delete char
keymap('n', 'x', '"_x', silent)
keymap('n', 'X', '"_X', silent)
keymap('v', 'x', '"_x', silent)
keymap('v', 'X', '"_X', silent)

-- Clear highlights
keymap('n', '<leader>cl', vim.cmd.nohl, { desc = 'Clear highlights', silent = true })

-- Close buffer without exiting nvim
keymap('n', '<leader>x', vim.cmd.bd, { desc = 'Close buffer' })

-- Don't yank when pasting
keymap('x', '<leader>p', '"_dP', { desc = 'Paste without yanking the old text', silent = true })

-- Easy buffer switch
keymap('n', '<Tab>', vim.cmd.bnext, { desc = 'Go to next buffer' })
keymap('n', '<S-Tab>', vim.cmd.bprev, { desc = 'Go to previous buffer' })

keymap('n', '<leader>cd', '<cmd>cd %:p:h<CR>', { desc = 'Change PWD to current file directory' })

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = '[Telescope] Find files' })
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = '[Telescope] Live grep' })
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = '[Telescope] Find in buffers' })
keymap('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', { desc = '[Telescope] Find keymaps' })
keymap('n', '<leader>fj', '<cmd>lua require("telescope").extensions.gitmoji.gitmoji()<cr>',
	{ desc = '[Telescope] Find gitmoji' })

-- CTRL-w is annoying
keymap('n', '<leader>w', '<c-w>', { noremap = true })

-- Open nvim config in a new tab
keymap('n', '<leader>/c', ':tabnew $MYVIMRC<cr> <bar> :tcd %:p:h<cr>',
	{ desc = 'Open Neovim config in a new tab', silent = true })

-- LSP related
keymap({ 'n', 'v' }, '<leader>lf', vim.cmd.Format, { desc = 'Format code' })

keymap('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open Netrw' })

-- Trouble
keymap('n', '<leader>lx', '<cmd>TroubleToggle quickfix<cr>')

-- Undotree
keymap('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Open Undotree panel' })

-- Ufo folding
keymap('n', 'zC', require('ufo').closeAllFolds)
keymap('n', 'zA', require('ufo').openAllFolds)
