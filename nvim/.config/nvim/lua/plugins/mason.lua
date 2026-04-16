return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- 1. Initialize Mason
    require("mason").setup()

    -- 2. Ensure your servers are downloaded
    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd", 
        "lua_ls", 
      },
    })
  end,
}
