return {

  -- LSP Support
  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "clangd", "pyright", "lua_ls" },
      }
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({})
      lspconfig.pyright.setup({})
      lspconfig.lua_ls.setup({})
    end,
  },

  -- Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "c", "cpp", "lua", "python", "json", "bash" },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },

  -- Iconos opcionales
  { "nvim-tree/nvim-web-devicons" },
}
