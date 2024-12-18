return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "plugins.configs.nvimtree"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "nvimtree")
      require("nvim-tree").setup(opts)
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "plugins.configs.null-ls"
    end,
  },
  -- {
  --   "mfussenegger/nvim-dap",
  -- },
  -- {
  --   "leoluz/nvim-dap-go",
  --   ft = "go",
  --   dependencies = "mfussenegger/nvim-dap",
  --   config = function (_, opts)
  --     require("dap-go").setup(opts)
  --   end
  -- },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    config = {
      lsp = {
        hover = {
          enabled = false
        },
        signature = {
          enabled = false
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "ibhagwan/fzf-lua",
      "rcarriga/nvim-notify",
    },
  },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
