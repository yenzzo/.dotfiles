return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- Performance optimization: only loads when you start typing
  dependencies = {
    -- 1. Snippet Engine (Strictly required by nvim-cmp)
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- 2. Completion Sources
    "hrsh7th/cmp-nvim-lsp", -- Connects to Neovim's built-in LSP client
    "hrsh7th/cmp-buffer",   -- Scans current buffer for repeated words
    "hrsh7th/cmp-path",     -- Suggests file paths from your system
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      -- Must configure a snippet engine, otherwise LSP completions will crash
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      
      -- Window styling (optional but highly recommended for readability)
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      -- Keybindings
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Move up the list
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Move down the list
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),    -- Scroll documentation window up
        ["<C-f>"] = cmp.mapping.scroll_docs(4),     -- Scroll documentation window down
        ["<C-Space>"] = cmp.mapping.complete(),     -- Manually trigger completion menu
        ["<C-e>"] = cmp.mapping.abort(),            -- Close menu without selecting
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept selected item (Enter)
      }),

      -- The order of sources dictates their priority in the menu
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Highest priority. Crucial for structural languages like C++ (via clangd)
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
