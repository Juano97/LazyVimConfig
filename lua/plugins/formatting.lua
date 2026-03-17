return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
        -- C / C++
        c = { "clang_format" },
        cpp = { "clang_format" },

        -- Rust
        rust = { "rustfmt" },

        -- Web
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
      })

      return opts
    end,
  },
}
