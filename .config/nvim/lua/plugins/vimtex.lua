return {
  {
    "lervag/vimtex",
    opts = {
      view_method = "zathura",
      compiler_method = "latexmk",
      latexmk = {
        options = {
          "-interaction=nonstopmode",
          "-synctex=1",
          "-file-line-error",
        },
      },
    },
    lazy = false,
  },
}
