local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		-- Generic
		"bashls",
		"dockerls",
		-- Python
		"pylsp",
		"black",
		"isort",
		"flake8",
		"pyproject-flake8",
		-- Web
		"tsserver",
		"eslint_d",
		"prettier",
		"prettierd",
		"yamlls",
		-- Lua / Vim
		"lua_ls",
		"vimls",
		-- Rust
		"rust_analyzer",
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
	}),
})
