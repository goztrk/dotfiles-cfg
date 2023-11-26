local keymap = vim.keymap.set
local silent = { silent = true }

-- H for easy moving to the first non-blank character of the line
keymap('n', 'H', '^', silent)
-- There is not much difference between L and $ so no need for now
-- keymap('n', 'L', '$', silent)

-- Keep visual mode while indenting
keymap('v', '<', '<gv', silent)
keymap('v', '>', '>gv', silent)

-- Save file with CTRL-S
keymap('n', '<C-s>', ':w<CR>')
keymap('i', '<C-s>', '<ESC>:w<CR>')

-- Don't yank on delete char
keymap('n', 'x', '"_x', silent)
keymap('n', 'X', '"_X', silent)
keymap('v', 'x', '"_x', silent)
keymap('v', 'X', '"_X', silent)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')

