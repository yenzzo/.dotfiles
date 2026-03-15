return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- 1. Initialize Mason (The Downloader)
    mason.setup()

    -- 2. Ensure your servers are downloaded
    mason_lspconfig.setup({
      ensure_installed = {
        "clangd", 
        "lua_ls", 
      },
    })

    -- 3. Broadcast your completion capabilities
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- 4. THE NEOVIM 0.11 STANDARD: Native Configuration
    
    -- Configure and enable Clangd
    vim.lsp.config("clangd", {
      capabilities = capabilities,
    })
    vim.lsp.enable("clangd")

    -- Configure and enable Lua
    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })
    vim.lsp.enable("lua_ls")
  end,
}
