return {
  'stevearc/conform.nvim',
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
    }
  },
  keys = {
    { "<leader>cf", function() require("conform").format({ lsp_fallback = true }) end, desc = "Format code" },
  }
}
