-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 1. Set the tab behavior
vim.opt.tabstop = 4 -- Number of spaces a Tab character represents
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indentation
vim.opt.expandtab = true -- Use spaces instead of tabs when pressing Tab

-- 2. Enable Shift-Tab to undo a tab (un-indent)
vim.api.nvim_set_keymap("i", "<S-Tab>", "<C-D>", { noremap = true, silent = true }) -- Shift-Tab in insert mode
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true }) -- Shift-Tab in normal mode

-- 3. Additional helpful tab-related options (optional)
vim.opt.smarttab = true -- Makes Tab work smarter (auto-expand when pressing Tab)
vim.opt.softtabstop = 4 -- The number of spaces that represents a tab in edit mode (e.g., backspace)
