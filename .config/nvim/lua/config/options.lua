local options = {
  -- Make vim use system clipboard.
  clipboard = 'unnamedplus',

	wrap = false,

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
  relativenumber = true,
	signcolumn = 'yes',
	colorcolumn = '80',

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
	foldcolumn = '1', -- '0' is not bad
	foldlevel = 99, -- Using ufo provider need a large value, feel free to decrease the value
	foldlevelstart = 99,
	foldenable = true,

	-- Don't autoindent
	textwidth = 0,
	wrapmargin = 0,
}


local globals = {
  mapleader                   = ' ',        --- Map leader key to SPC
  maplocalleader              = ',',        --- Map local leader key to comma
  speeddating_no_mappings     = 1,          --- Disable default mappings for speeddating
  python3_host_prog           = '~/.pyenv/versions/py3nvim/bin/python',
	loaded_perl_provider        = 0,
	loaded_ruby_provider        = 0,
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
