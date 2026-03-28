return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    -- Initialize the plugin with your specific preferences before setting the colorscheme
    require("gruvbox").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      contrast = "", -- Options: "hard", "soft", or "" (default)
      transparent_mode = false,
    })

    -- Execute the Vim command to apply the theme globally
    vim.cmd("colorscheme gruvbox")
  end,
}
