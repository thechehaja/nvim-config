# nvim-config

My Neovim setup. It runs on lazy.nvim with a Tokyo Night theme, LSP, completion, and Treesitter.

## Requirements

- Neovim 0.11 or newer
- git and a C compiler (gcc or clang) so Treesitter can build its parsers
- ripgrep and fd for Telescope searches
- A Nerd Font selected in your terminal for the icons

## Install

Back up any config you already have, then clone this repo into place and start Neovim:

```
git clone git@github.com:thechehaja/nvim-config.git ~/.config/nvim
nvim
```

On the first launch lazy.nvim pulls the plugins, Mason installs the Lua language server, and the Treesitter parsers compile. Give it a moment, then restart.

## Layout

```
init.lua                 leader key, then options, keymaps, and the lazy bootstrap
lua/config/options.lua   editor options
lua/config/keymaps.lua   core keymaps
lua/plugins/             one file per area (theme, lsp, telescope, ...)
```

## Keymaps

Leader is the Space bar. Press Space and pause for a second, and which-key lists everything that is available.

| Key | Action |
| --- | --- |
| `Space e` | toggle the file explorer |
| `Space ff` | find files |
| `Space fg` | grep across the project |
| `Space fb` | list open buffers |
| `Ctrl h/j/k/l` | move between windows |
| `Shift h` / `Shift l` | previous / next buffer |
| `gd`, `gr`, `K` | definition, references, hover docs |
| `Space ca` / `Space rn` | code action / rename symbol |
| `Space cf` | format the buffer |
| `gcc` | toggle a comment |
| `jk` (insert mode) | escape |

## Plugins

The theme is folke/tokyonight. Beyond that: Treesitter for syntax, Telescope with fzf-native for fuzzy finding, nvim-tree for files, lualine for the statusline, gitsigns for the gutter, which-key for discoverability, plus Comment, autopairs, and nvim-surround. The LSP side uses mason, nvim-lspconfig, nvim-cmp, and LuaSnip.

To add another language server, open `:Mason`, install it, and it attaches automatically.
