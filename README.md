# nvim-config

My personal [Neovim](https://neovim.io/) configuration — a Lua setup built on [lazy.nvim](https://github.com/folke/lazy.nvim), with LSP, autocompletion, fuzzy finding, a file tree, formatting/linting, and debugging wired up.

## Highlights

- **Plugin manager:** lazy.nvim (bootstraps itself on first launch)
- **Theme:** [Catppuccin](https://github.com/catppuccin/nvim)
- **Statusline:** lualine · **Dashboard:** alpha-nvim · **File tree:** neo-tree · **Icons:** nvim-web-devicons
- **Fuzzy finder:** Telescope (+ ui-select)
- **LSP:** nvim-lspconfig + Mason + mason-lspconfig — auto-installs `lua_ls` and `ts_ls`
- **Completion:** nvim-cmp with LuaSnip + friendly-snippets
- **Format / lint:** none-ls — Prettier, Stylua, and eslint_d
- **Debugging:** nvim-dap + nvim-dap-ui
- **Treesitter:** syntax highlighting
- Editor defaults: 2-space indentation (`expandtab`), leader key set to `<Space>`

## Requirements

- **Neovim 0.9+**
- `git` and a C compiler (Treesitter builds parsers)
- [ripgrep](https://github.com/BurntSushi/ripgrep) for Telescope live grep
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- For none-ls: `prettier`, `stylua`, and `eslint_d` available on your `PATH`

LSP servers (`lua_ls`, `ts_ls`) are installed automatically by Mason on first run.

## Install

Back up any existing config, then clone this into Neovim's config directory:

```bash
# Linux / macOS
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
git clone https://github.com/thechehaja/nvim-config.git ~/.config/nvim
nvim
```

On first launch lazy.nvim installs all plugins and Mason pulls down the LSP servers. The pinned plugin versions live in `lazy-lock.json`.

## Keymaps

Leader is `<Space>`.

| Keys         | Action                          |
| ------------ | ------------------------------- |
| `Ctrl-p`     | Find files (Telescope)          |
| `<leader>fg` | Live grep (Telescope)           |
| `Ctrl-n`     | Toggle file tree (Neo-tree)     |
| `K`          | LSP hover                       |
| `<leader>gd` | Go to definition                |
| `<leader>ca` | Code action                     |
| `<leader>gf` | Format buffer                   |
| `<leader>dt` | Toggle breakpoint (DAP)         |
| `<leader>dc` | Continue / start debugging (DAP)|

Completion (insert mode): `<C-Space>` to trigger, `<CR>` to confirm, `<C-b>` / `<C-f>` to scroll docs.

## Layout

```
init.lua                 # bootstraps lazy.nvim, loads options + plugins
lua/vim-options.lua      # editor settings (indent, leader)
lua/plugins/             # one file per plugin/feature
  catppuccin.lua  lualine.lua   alpha.lua     neo-tree.lua
  telescope.lua   lsp-config.lua completions.lua none-ls.lua
  treesitter.lua  debugging.lua
lazy-lock.json           # pinned plugin versions
```
