-- Vim options
vim.opt.relativenumber = true

-- General
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "rose-pine-moon"
lvim.leader = "space"

-- Project
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git", "^node_modules", "^.venv" }

-- Tree explorer
lvim.builtin.nvimtree.setup.view.width = 40

-- Keybindings
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
lvim.builtin.treesitter.auto_install = true

-- LSP settings
lvim.lsp.installer.setup.ensure_installed = {
  "pyright",
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
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle"
  },

  -- Persistance (sessions)
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },

  -- Multi cursor
  { "mg979/vim-visual-multi" },

  -- GH copilot
  -- {
  --   "github/copilot.vim",
  --   config = function()
  --     vim.g.copilot_no_tab_map = true
  --     vim.g.copilot_assume_mapped = true
  --     vim.api.nvim_set_keymap("i", "<C-x>", 'copilot#Accept("")', { expr = true, silent = true })
  --   end,
  -- },

  -- Spectre search and replace
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },

  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    event = "BufRead",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- Themes
  { "lunarvim/horizon.nvim" },
  { "catppuccin/nvim" },
  { "arcticicestudio/nord-vim" },
  { "ellisonleao/gruvbox.nvim" },
  { 'rose-pine/neovim',        as = 'rose-pine' },
}

-- Persistance
lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  s = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

-- Trouble
lvim.builtin.which_key.mappings["t"] = {
  name = "Trouble",
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
