return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      width = 150,
      options = {
        number = true,
        relativenumber = true,
      },
    },
    plugins = {
      gitsigns = true,
      tmux = true,
    },
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
}
