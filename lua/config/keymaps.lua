-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>dy", function()
  local diags = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
  if #diags == 0 then
    return vim.notify("No diagnostic on this line")
  end
  local msgs = vim.tbl_map(function(d)
    return d.message
  end, diags)
  vim.fn.setreg("+", table.concat(msgs, "\n"))
  vim.notify("Copied: " .. msgs[1])
end, { desc = "Yank line diagnostics" })
