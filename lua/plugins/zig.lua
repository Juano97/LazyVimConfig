-- Zig setup notes:
--
-- ZLS is hard-pinned to a Zig version. `zig 0.16.0` needs `zls 0.16.x` — with a
-- mismatch ZLS starts fine but stops answering completion/hover requests, which
-- looks exactly like "autocomplete is broken". Check for this first:
--
--   zig version && zls --version
--   grep -i 'does not support Zig' ~/.local/state/nvim/lsp.log
--
-- Arch's `extra/zls` and Mason's registry both still ship 0.15.1, so ZLS here is
-- installed as a pinned Mason package:
--
--   :MasonInstall zls@0.16.0
--
-- Mason's `ensure_installed` can't express a version, so it is deliberately NOT
-- listed there — that also keeps `:Mason` "update all" from dragging it back to
-- the registry's 0.15.1. Re-run the command above after a Zig upgrade.
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      zls = {
        settings = {
          zls = {
            -- fill call arguments as snippet placeholders you can <Tab> through
            enable_argument_placeholders = true,
            enable_snippets = true,
            -- surface unused/shadowed names while typing
            warn_style = true,
            -- `build_on_save` is left off on purpose: it defaults to the
            -- `install` step, which rebuilds the whole project on every write.
            -- Add a `check` step to build.zig and set both of these to get
            -- fast full-project diagnostics:
            --   enable_build_on_save = true,
            --   build_on_save_step = "check",
          },
        },
      },
    },
  },
}
