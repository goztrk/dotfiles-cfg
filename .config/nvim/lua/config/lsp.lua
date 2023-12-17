local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')

lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(_, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- Correct folding with nvim-ufo
lsp_zero.set_server_config({
  capabilities = {
    textDocument = {
      foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      },
    },
  },
})


require('mason').setup({
	ensure_installed = {
		-- Python
		"ruff",
		"black",
		"isort",
		"flake8",
		"pyproject-flake8",
		-- Web
		"eslint_d",
		"prettier",
		"prettierd",
	}
})
require('mason-lspconfig').setup({
	ensure_installed = {
		-- Generic
		"bashls",
		"dockerls",
		-- Python
		"pylsp",
		"ruff_lsp",
		-- "pyright",
		-- Web
		"tsserver",
		-- Lua / Vim
		"lua_ls",
		"vimls",
		-- Rust
		"rust_analyzer",
	},
	handlers = {
		lsp_zero.default_setup,
		pylsp = function ()
			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						plugins = {
							-- pylsp_mypy = { enabled = true },
							-- Disabled
							black = { enabled = false },
							-- pylint = { enabled = false, executable = "pylint" },
							-- ruff = { enabled = false },
							flake8 = { enabled = false },
							pyls_isort = { enabled = false },
							pycodestyle = { enabled = false },
							pyflakes = { enabled = false },
							pyls_mypy = {
								enabled = true,
								report_progress = true,
								live_mode = false,
								overrides = { "--python-executable", py_path = true, },
							},
							jedi_completion = { fuzzy = false },
						},
					},
				},
			})
		end,
		-- pyright = function()
		-- 	lspconfig.pyright.setup({
		-- 		before_init = function(_, config)
		-- 			local new_path = require('config.utilities').get_python_path(config.root_dir)
		-- 			config.settings.python.pythonPath = new_path
		-- 		end,
		-- 		settings = {
		-- 			python = {
		-- 				analysis = {
		-- 					autoSearchPaths = true,
		-- 					diagnosticMode = "workspace",
		-- 					useLibraryCodeForTypes = true,
		-- 					disableOrganizeImports = true,
		-- 				},
		-- 			},
		-- 		},
		-- 	})
		-- end,
	},
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
	}),
})
