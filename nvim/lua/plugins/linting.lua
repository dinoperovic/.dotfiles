return {
  {
    "mfussenegger/nvim-lint",
    dependencies = {
      'williamboman/mason.nvim',
    },
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        fish = { "fish" },
      }
    }
  },
  {
    "rshkarin/mason-nvim-lint",
    dependencies = {
      "mfussenegger/nvim-lint",
    }
  }
}
