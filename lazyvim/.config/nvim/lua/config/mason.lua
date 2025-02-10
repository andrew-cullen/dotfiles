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
      lspconfig.ruff.setup({
        cmd = { "/home/andrew/.local/bin/ruff", "server" },
        filetypes = { "python" },
        on_attach = function(client, bufnr)
          --print("Ruff LSP attached!")
          vim.api.nvim_echo({ { string.format("Ruff LSP attached to buffer %d", bufnr), "Normal" } }, true, {})
        end,
      })
      -- C/C++
      lspconfig.clangd.setup({
        cmd = { "clangd", "--background-index", "--clang-tidy" },
      })
    end,
  },
}
