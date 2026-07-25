return {
  {
    "Juano97/mentor.nvim",
    -- Keep it out of lazy-loading: a lazy plugin isn't on the runtimepath until
    -- it loads, and :checkhealth mentor can only find lua/mentor/health.lua
    -- once it is.
    lazy = false,
    opts = {},
  },
}
