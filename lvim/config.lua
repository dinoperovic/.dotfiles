-- General
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "horizon"
lvim.leader = "space"

-- Project
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git", "^node_modules" }

-- Keybindings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Telescope navigation
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- Treesitter config
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- LSP settings
lvim.lsp.installer.setup.ensure_installed = {
  "pyright",
  "sumneko_lua",
  "jsonls",
}

-- Additional formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    command = "prettierd",
    filetypes = { "javascript", "typescript", "typescriptreact", "svelte", "css", "html", "markdown", "yaml" },
  },
}

-- Additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "mypy",   filetypes = { "python" } },
  { command = "flake8", filetypes = { "python" } },
}

-- Additional Plugins
lvim.plugins = {
  -- Trouble diagnostics
  { "folke/trouble.nvim",     cmd = "TroubleToggle" },

  -- GIT diffview
  { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' },

  -- Multi cursor
  { "mg979/vim-visual-multi" },

  -- GH copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  },

  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },

  -- Themes
  { "lunarvim/horizon.nvim" },
  { "catppuccin/nvim" },
  { "arcticicestudio/nord-vim" },
  { "ellisonleao/gruvbox.nvim" },
}

-- Trouble
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- Spectre
lvim.builtin.which_key.mappings["R"] = {
  name = "Replace",
  s = { "<cmd>lua require('spectre').open()<cr>", "search" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "file" },
}
