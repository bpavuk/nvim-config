require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>rs", function()
  vim.lsp.buf.rename()
end, { desc = "Rename the symbol at cursor" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
