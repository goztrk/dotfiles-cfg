local options = {
  -- Make vim use system clipboard.
  clipboard = 'unnamed,unnamedplus',

	timeoutlen = 400,
	updatetime = 100,
  termguicolors = true,

	errorbells = false,

	encoding = 'utf-8',
	fileencoding = 'utf-8',

  -- Highlight of current line.
  -- NOTE: Is it really necessary?
  cursorline = true,

  -- Show line numbers on the left.
  -- TODO: In normal mode show normal numbers, and in insert mode show relative number
  number = true,
  relativenumber = false,

  -- Enable mouse support
  mouse = 'a',

  -- Always keep space when scrolling to bottom/top edge
  scrolloff = 8,

  -- Show sign column left to line numbers.
  -- I am not sure if this has any useful purpose
  -- signcolumn = 'yes:2',

  -- Annoying indentation with Neovim...
  shiftwidth = 2,
  showtabline = 2,
  smartindent = true,
	smarttab = true,
  softtabstop = 2,
  tabstop = 2,
}

local globals = {
  mapleader                   = ' ',        --- Map leader key to SPC
  maplocalleader              = ',',        --- Map local leader key to comma
  speeddating_no_mappings     = 1,          --- Disable default mappings for speeddating
}

vim.opt.shortmess:append('c');
vim.opt.formatoptions:remove('c');
vim.opt.formatoptions:remove('r');
vim.opt.formatoptions:remove('o');
vim.opt.fillchars:append('stl: ');
vim.opt.fillchars:append('eob: ');
vim.opt.fillchars:append('fold: ');
vim.opt.fillchars:append('foldopen: ');
vim.opt.fillchars:append('foldsep: ');
vim.opt.fillchars:append('foldclose:');

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end
