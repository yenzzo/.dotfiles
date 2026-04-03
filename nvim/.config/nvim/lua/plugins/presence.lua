return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      -- You can change these options later if you want
      auto_update         = true,
      main_image          = "neovim",
      enable_line_number  = false,
      show_time           = true,
    })
  end,
}
