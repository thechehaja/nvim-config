-- General editor options
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"      -- use system clipboard (wl-clipboard on Wayland)
opt.breakindent = true
opt.undofile = true                -- persistent undo
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 400
opt.splitright = true
opt.splitbelow = true
opt.inccommand = "split"           -- live preview of :substitute
opt.cursorline = true
opt.scrolloff = 8
opt.termguicolors = true           -- true color (works via tmux/ghostty RGB)

-- Indentation: 2 spaces, expand tabs
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Nicer whitespace + fold defaults
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.wrap = false
opt.foldlevel = 99

-- Diagnostics: rounded float + signs
vim.diagnostic.config({
  float = { border = "rounded" },
  virtual_text = { spacing = 2 },
  severity_sort = true,
})
