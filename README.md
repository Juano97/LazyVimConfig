# LazyVim Config

## Requirements

Neovim 0.11+ and a [Nerd Font](https://www.nerdfonts.com/) in the terminal.

These system tools are not installed by the config. Neovim warns on startup when one is missing.

| Tool | Used for |
| --- | --- |
| `git` | lazy.nvim plugin installs |
| `lazygit` | `<leader>gg` git UI |
| `rg` (ripgrep) | grep pickers |
| `fd` | file pickers |
| `node` / `npm` | Mason installs of the TypeScript, ESLint, Tailwind and JSON language servers |
| `gcc`, `make` | compiling treesitter parsers |
| `curl`, `unzip` | Mason downloads |

Arch: `sudo pacman -S git lazygit ripgrep fd nodejs npm gcc make curl unzip`

Language servers and formatters (`vtsls`, `eslint-lsp`, `tailwindcss-language-server`, `json-lsp`, `prettierd`, ...) are installed automatically by Mason on first start.
