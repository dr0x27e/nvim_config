-- plugins.lua

return {
    -- Color scheme
    { "folke/tokyonight.nvim", priority = 1000 },

    -- LSP Config
    { "neovim/nvim-lspconfig" },

    -- Autocompletion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "go", "lua", "python", "javascript", "html", "css",
                "c", "vim", "vimdoc", "query" },

                auto_install = true,

                highlight = {
                    enable = true,  -- Enable syntax highlighting
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ss",
                        node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>sc",
                        node_decremental = "<Leader>sd",
                    },
                },
            })
        end,
    },

    -- Autopairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        check_ts = true,
        disable_in_macro = true,
        disable_in_replace_mode = true,
    },

    -- lspconfig
    { 
        "neovim/nvim-lspconfig", 
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
        end,
    },
}

