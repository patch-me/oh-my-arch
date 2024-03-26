return {
    {
        "crnvl96/lazydocker.nvim",
        event = "VeryLazy",
        opts = {}, -- automatically calls `require("lazydocker").setup()`
        dependencies = {
            "MunifTanjim/nui.nvim",
        }
    },
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    }
}
