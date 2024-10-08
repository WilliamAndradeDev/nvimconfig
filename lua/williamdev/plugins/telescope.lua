return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})
		telescope.load_extension("fzf")
		-- redefinindo comandos
		local keymaps = vim.keymap

		keymaps.set("n","<leader>ff","<cmd>Telescope find_files<CR>", { desc = "Buscador de arquivos" })
		keymaps.set("n","<leader>fr","<cmd>Telescope old_files<CR>", { desc = "Buscar arquivos recentes" })
		keymaps.set("n","<leader>ff","<cmd>Telescope find_files<CR>", { desc = "Buscador de arquivos" })
		keymaps.set("n","<leader>ff","<cmd>Telescope find_files<CR>", { desc = "Buscador de arquivos" })
	end,
}
