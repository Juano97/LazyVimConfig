-- bootstrap lazy.nvim, LazyVim and your plugins
vim.env.PATH = vim.env.HOME .. "/.cargo/bin:" .. vim.env.PATH

require("config.lazy")
