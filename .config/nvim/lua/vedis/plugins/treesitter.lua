return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = {
            'bash',
            'c',
            'lua',
            'vim',
            'vimdoc',
            'query',
            'markdown',
            'markdown_inline',
            'html',
            'javascript',
            'json',
            'css',
            'python',
            'go'
        },
        auto_install = true,
        hightlight = {
            enable = true,
        },
        indent = { enable = true },
    },
}
