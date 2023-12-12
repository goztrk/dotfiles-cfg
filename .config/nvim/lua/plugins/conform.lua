require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { { "ruff", "isort", "black" } },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "eslint_d", "prettierd", "prettier" } },
    typescript = { { "eslint_d", "prettierd", "prettier" } },
    tsx = { { "eslint_d", "prettierd", "prettier" } },
  },
})
