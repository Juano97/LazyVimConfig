-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local missing = vim.tbl_filter(function(bin)
  return vim.fn.executable(bin) == 0
end, { "git", "lazygit", "rg", "fd", "node", "gcc" })
if #missing > 0 then
  vim.notify("Missing system tools: " .. table.concat(missing, ", ") .. "\nSee README.md", vim.log.levels.WARN)
end
