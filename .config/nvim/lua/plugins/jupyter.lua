return {
  -- Interactive Jupyter cells within Neovim
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_auto_open_output = true
    end,
  },

  -- Image rendering support for Jupyter outputs
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- Or "wezterm" or "kitty" depending on your terminal
    },
  },
}
