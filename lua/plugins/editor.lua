return {
  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    },
    opts = {
      view = { width = 34 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
      actions = { open_file = { quit_on_open = false } },
    },
  },

  -- Git signs in the gutter
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      on_attach = function(bufnr)
        local gs = require("gitsigns")
        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end
        map("n", "]c", function() gs.nav_hunk("next") end, "Next git hunk")
        map("n", "[c", function() gs.nav_hunk("prev") end, "Prev git hunk")
        map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")
        map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
        map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")
        map("n", "<leader>gb", function() gs.blame_line({ full = true }) end, "Blame line")
      end,
    },
  },

  -- Commenting: gcc (line), gc (motion/visual)
  { "numToStr/Comment.nvim", event = "VeryLazy", opts = {} },

  -- Auto-close brackets/quotes
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

  -- Surround: ys / cs / ds
  { "kylechui/nvim-surround", event = "VeryLazy", opts = {} },
}
