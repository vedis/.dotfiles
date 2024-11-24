return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "saadparwaiz1/cmp_luasnip" },
    },
    config = function()
        local lsp = require("lsp-zero")

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "pylsp",
                "gopls",
                "rust_analyzer",
            },
            handlers = {
                lsp.default_setup,
                lua_ls = function()
                    local lua_opts = lsp.nvim_lua_ls()
                    require("lspconfig").lua_ls.setup(lua_opts)
                end,
            },
        })
    end
}
