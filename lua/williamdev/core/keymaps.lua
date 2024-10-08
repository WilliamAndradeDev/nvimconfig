vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n","<leader>nh",":nohl<CR>", { desc = "Limpar highlight de busca" })

-- Manipulação de janelas
keymap.set("n", "<leader>sv", "<C-w>v", { desc= "Dividir janela na vertical"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc= "Dividir janela na horizontal"})
keymap.set("n", "<leader>se", "<C-w>=", { desc= "Dividir janela em tamanhos iguais"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc= "Fecha a janela dividida atual" })

-- movimentação de janelas
keymap.set("n", "<leader>we", "<C-w>h", { desc= "Mover cursor para janela esquerda"})
keymap.set("n", "<leader>wr", "<C-w>l", { desc= "Mover cursor para janela direita"})

-- Manipulação de abas
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc= "Abre uma nova aba"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc= "Fecha aba atual"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc= "Ir para próxima aba"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc= "Retornar para a aba anterior"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc= "Abre o arquivo atual em uma nova aba"})
