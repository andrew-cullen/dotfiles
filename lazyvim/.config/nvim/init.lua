-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- At the top, to help with debugging
vim.lsp.set_log_level("debug")

local lspconfig = require("lspconfig")
lspconfig.ruff.setup({
  cmd = { "/home/andrew/.local/bin/ruff", "server" },
  filetypes = { "python" },
  on_attach = function(client, bufnr)
    --print("Ruff LSP attached!")
    vim.api.nvim_echo({ { string.format("Ruff LSP attached to buffer %d", bufnr), "Normal" } }, true, {})
  end,
})
