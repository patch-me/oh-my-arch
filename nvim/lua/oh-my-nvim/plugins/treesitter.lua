return {

    --Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local tsautotag = require 'nvim-treesitter.configs'.setup {
                autotag = {
                    enable = true,
                    enable_rename = true,
                    enable_close = true,
                    enable_close_on_slash = true,
                    filetypes = { "html", "xml" },
                }
            }
            tsautotag()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
            local test = require('nvim-ts-autotag').setup({
                filetypes = { "astro", "js", "html", "xml" },
            })
            test()
        end,
        ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua", "rust" },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    },
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-context",
}
