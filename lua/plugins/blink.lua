-- Completion tuning on top of LazyVim's blink.cmp defaults.
-- The heavy lifting for good suggestions comes from the language servers
-- (see the lang extras in lazyvim.json); this file only adjusts behaviour/UI.
return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = {
          -- don't preselect the first item, so <CR> stays a plain newline
          -- until you deliberately pick something with <C-n>/<C-p>
          preselect = false,
          -- ...but once you move through the list, insert as you go
          auto_insert = true,
        },
      },
      menu = {
        border = "rounded",
        draw = {
          treesitter = { "lsp" },
          -- show which source an item came from (LSP / Snippet / Buffer / Path)
          columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
            { "source_name" },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 50,
        window = { border = "rounded" },
      },
      -- inline preview of the item you have selected
      ghost_text = { enabled = true },
    },

    -- function parameter hints while typing arguments
    signature = {
      enabled = true,
      window = { border = "rounded" },
    },

    -- native (Rust) fuzzy matcher: much better ranking + typo tolerance
    fuzzy = {
      implementation = "prefer_rust_with_warning",
      sorts = { "exact", "score", "sort_text" },
    },

    keymap = {
      preset = "enter",
      ["<C-y>"] = { "select_and_accept" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
    },
  },
}
