return {
  {
    "Juano97/mentor.nvim",
    -- Load from ~/Work/Personal/mentor.nvim (see `dev` in config/lazy.lua) so
    -- local edits apply on restart. Set to false to use the published copy.
    dev = true,
    -- Keep it out of lazy-loading: a lazy plugin isn't on the runtimepath until
    -- it loads, and :checkhealth mentor can only find lua/mentor/health.lua
    -- once it is.
    lazy = false,
    opts = {},
  },
}
