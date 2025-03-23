local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n",
  "<leader>md",
  function()
    vim.cmd.RenderMarkdown('toggle') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Render Markdown" }
)
require('cmp').setup.buffer { completion = { autocomplete = false } }
