return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recomendacoes de configuracao do nvim-tree doc
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 30,
			},
			git = {
				ignore = false
			}
		})
		local keymap = vim.keymap

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Abre/Fecha explorador de arquivos" })
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Fecha pastas de arquivos no explorador" })
		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Abre a localização do arquivo atual no explorador"})
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Atualiza a lista de arquivos exibidos no explorador"})
	end
}
