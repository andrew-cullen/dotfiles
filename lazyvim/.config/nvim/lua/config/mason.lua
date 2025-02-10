return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright", -- Python LSP
        "black", -- Python formatter
        "flake8", -- Python linter
        "clangd", -- C/C++ LSP
        "codelldb", -- Debugger for C/C++ and Python
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")
      -- Python
      lspconfig.pyright.setup({})
      -- C/C++
      lspconfig.clangd.setup({
        cmd = { "clangd", "--background-index", "--clang-tidy" },
      })
    end,
  },
}
