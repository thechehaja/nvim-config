return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- classic API (the new `main` rewrite has a different config surface)
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
        "lua", "vim", "vimdoc", "bash", "python", "javascript",
        "typescript", "json", "yaml", "toml", "markdown",
        "markdown_inline", "html", "css", "c", "diff", "gitcommit",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
