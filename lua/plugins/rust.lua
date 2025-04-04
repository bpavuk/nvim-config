return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
    end,
  },

  {
    "slint-ui/vim-slint",
    config = function()
      return require("lspconfig").slint_lsp.setup {}
    end,
    ft = { "slint" },
  },
}
