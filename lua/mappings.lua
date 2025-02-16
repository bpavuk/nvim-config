require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local tmux = require("tmux")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>rs", function()
  vim.lsp.buf.rename()
end, { desc = "Rename the symbol at cursor" })


-- tmux navigation
map("n", "<C-h>", function() tmux.move_left() end)
map("n", "<C-j>", function() tmux.move_bottom() end)
map("n", "<C-k>", function() tmux.move_top() end)
map("n", "<C-l>", function() tmux.move_right() end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
