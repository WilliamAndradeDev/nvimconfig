return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
	-- importando mason
	local mason = require("mason")

	--  importando mason-lspconfig
	local mason_lspconfig = require("mason-lspconfig")

	-- habilita mason e configura icones
	mason.setup({
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
          		package_uninstalled = "✗",
			},
		},
	})

	mason_lspconfig.setup({
		ensure_installed = {
			"lua_ls",
			"gopls",
		}
	})
	end,
}
