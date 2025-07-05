-- Example: lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "html",
      "latex",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "python",
      "query", -- for nvim-treesitter queries
      "regex",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
      -- Add "yuck" to this list
      "yuck",
    },
    -- Other treesitter options like highlight, indent, etc.
    highlight = {
      enable = true,
    },
    indent = { enable = true },
    -- ...
  },
  -- The config function usually calls setup
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
