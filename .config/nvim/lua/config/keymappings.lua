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
keymap('n', '<leader>cl', '<cmd>nohl<cr>', silent)

-- Close buffer without exiting nvim
keymap('n', '<leader>x', '<cmd>bd<CR>')

-- Don't yank when pasting
keymap('x', '<leader>p', '"_dP', silent)

-- Easy buffer switch
keymap('n', '<Tab>', '<cmd>bnext<CR>')
keymap('n', '<S-Tab>', '<cmd>bprev<CR>')

keymap('n', '<leader>cd', '<cmd>cd %:p:h<CR>')

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')

-- CTRL-w is annoying
keymap('n', '<leader>w', '<c-w>', { noremap = true })

-- Open nvim config in a new tab
keymap('n', '<leader>/c', ':tabnew $MYVIMRC<cr> <bar> :tcd %:p:h<cr>', silent)

-- LSP related
keymap({'n', 'v'}, '<leader>lf', '<cmd>Format<cr>')

keymap('n', '<leader>pv', vim.cmd.Ex)

-- Trouble
keymap('n', '<leader>lx', '<cmd>TroubleToggle quickfix<cr>')

-- Undotree
keymap('n', '<leader>u', '<cmd>UndotreeToggle<cr>')

