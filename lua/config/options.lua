-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- auto-session needs `localoptions` in sessionoptions, otherwise mksession does
-- not record buffer-local options and restored buffers come back with an empty
-- filetype -- which means no treesitter highlighting and no LSP attached until
-- you close and reopen the buffer. LazyVim's default omits it.
vim.opt.sessionoptions:append("localoptions")
