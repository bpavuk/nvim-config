local configs = require "nvchad.configs.lspconfig"

local servers = {
  html = {
    filetypes = { "html", "htmldjango", "superhtml" }
  },
  cssls = {},
  somesass_ls = {
    root_dir = function(...)
      return require("lspconfig.util").root_pattern ".git"(...)
    end,
    init_options = {
      workspace = root_dir,
    },
  },
  bashls = {},
  clangd = {},

  slint_lsp = {},

  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          typeCheckingMode = "basic",
        },
      },
    },
  },

  asm_lsp = {},
  rnix = {},
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
