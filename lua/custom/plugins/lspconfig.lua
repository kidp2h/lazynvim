local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "cssls", "emmet_ls", "clangd", "tailwindcss" }
local navicServers = { "tsserver", "sumneko_lua", "html", "jsonls", "yamlls" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

for _, lsp in ipairs(navicServers) do
	lspconfig[lsp].setup({
		on_attach = function(client, bufnr)
			on_attach(client, bufnr)
			require("nvim-navic").attach(client, bufnr)
			require("lsp-inlayhints").on_attach(client, bufnr)
			-- require("lsp_signature").on_attach({
			-- 	bind = true, -- This is mandatory, otherwise border config won't get registered.
			-- 	handler_opts = {
			-- 		border = "rounded",
			-- 	},
			-- }, bufnr)
			require("aerial").on_attach(client, bufnr)
		end,
		capabilities = capabilities,
		settings = {
			typescript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
			javascript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
		},
	})
end
