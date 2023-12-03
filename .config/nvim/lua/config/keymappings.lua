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


-- Close buffer without exiting nvim
keymap('n', '<leader>x', '<cmd>bd<CR>')

-- Easy buffer switch
keymap('n', '<Tab>', '<cmd>bnext<CR>')
keymap('n', '<S-Tab>', '<cmd>bprev<CR>')

keymap('n', '<leader>cd', '<cmd>cd %:p:h<CR>')

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')

-- Python related
keymap('n', '<leader>pi', '<cmd>silent !venv/bin/isort %<cr>', silent)
keymap('n', '<leader>pb', '<cmd>silent !venv/bin/black -q %<cr>', silent)

