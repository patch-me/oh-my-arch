return {
    "debugloop/telescope-undo.nvim",
    dependencies = { -- note how they're inverted to above example
        {
            "nvim-telescope/telescope.nvim",
            dependencies = { "nvim-lua/plenary.nvim" },
        },
    },
    keys = {
        { -- lazy style key map
            "<leader>u",
            "<cmd>Telescope undo<cr>",
            desc = "undo history",
        },
    },
    opts = {
        extensions = {
            undo = {
                mappings = {
                    -- Wrapping the actions inside a function prevents the error due to telescope-undo being not
                    -- yet loaded.
                    i = {
                        ["<cr>"] = function(bufnr)
                            return require("telescope-undo.actions").yank_larger(bufnr)
                        end,
                    },
                    n = {
                        ["y"] = function(bufnr)
                            return require("telescope-undo.actions").yank_larger(bufnr)
                        end,
                    },
                },
            },
        },
    },
    config = function(_, opts)
        -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
        -- configs for us. We won't use data, as everything is in it's own namespace (telescope
        -- defaults, as well as each extension).
        require("telescope").setup(opts)
        require("telescope").load_extension("undo")
    end,
}
