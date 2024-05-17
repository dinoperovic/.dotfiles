return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = true,
		build = ":MasonUpdate",
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"stylua",
				"shfmt",
				"terraform-ls",

				-- frontend
				"typescript-language-server",
				"tailwindcss-language-server",
				"svelte-language-server",
				"html-lsp",
				"css-lsp",
				"eslint-lsp",
				"prettierd",

				-- python
				"pyright",
				"ruff-lsp",

				-- go
				"gopls",
				"goimports",
				"gofumpt",

				-- rust
				"rust_analyzer",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			{ "j-hui/fidget.nvim", opts = {} },
			{ "folke/neodev.nvim", opts = {} },
		},
		opts = {
			servers = {
				lua_ls = {
					Lua = {
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
						diagnostics = { disable = { "missing-fields" } },
					},
				},
				pyright = {
					pyright = {
						disableOrganizeImports = true,
					},
				},
			},
		},
		config = function(_, opts)
			--  This function gets run when an LSP connects to a particular buffer.
			local on_attach = function(client, bufnr)
				local nmap = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
				end

				if client.name == "ruff_lsp" then
					-- Disable hover in favor of pylsp.
					client.server_capabilities.hoverProvider = false
				end

				-- stylua: ignore start
				nmap("<leader>cr", vim.lsp.buf.rename, "Rename")
				nmap("<leader>ca", vim.lsp.buf.code_action, "Code Action")

				nmap("gd", require("telescope.builtin").lsp_definitions, "Goto Definition")
				nmap("gr", require("telescope.builtin").lsp_references, "Goto References")
				nmap("gI", require("telescope.builtin").lsp_implementations, "Goto Implementation")
				nmap("gy", require("telescope.builtin").lsp_type_definitions, "Type Definition")

				nmap("tgd", function() require("telescope.builtin").lsp_definitions({ jump_type = "tab" }) end, "Goto Definition (Tab)")
				nmap("tgr", function() require("telescope.builtin").lsp_references({ jump_type = "tab" }) end, "Goto References (Tab)")
				nmap("tgI", function() require("telescope.builtin").lsp_implementations({ jump_type = "tab" }) end, "Goto Implementation (Tab)")
				nmap("tgy", function() require("telescope.builtin").lsp_type_definitions({ jump_type = "tab" }) end, "Type Definition (Tab)")

				-- Lesser used LSP functionality
				nmap("gD", vim.lsp.buf.declaration, "Goto Declaration")

				-- Create a command `:Format` local to the LSP buffer
				vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_) vim.lsp.buf.format() end, { desc = "Format current buffer with LSP" })
				-- stylua: ignore end
			end

			-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						on_attach = on_attach,
						settings = opts.servers[server_name],
						filetypes = (opts.servers[server_name] or {}).filetypes,
					})
				end,
			})
		end,
	},
}
