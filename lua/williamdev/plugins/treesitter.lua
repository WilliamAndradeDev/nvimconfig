return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		-- importa o plugin do treesitter
		local treesitter = require("nvim-treesitter.configs")
		
		-- configuração do treesitter
		treesitter.setup({ --habilita o syntax highlighting
			highlight = {
				enable = true,
			},
			-- habilita identação
			indent = { enable = true },
			-- habilita parsers para as linguagens listadas
			ensure_installed = {
				"lua",
				"go",
				"gomod",
				"gosum",
				"json",
				"sql",
				"yaml",
				"dockerfile",
				"gitignore",
				"gdscript",
				"gdshader",
				"c_sharp",
				"proto",
				"bash"
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>"
				},
			},
		})
	end,
}
