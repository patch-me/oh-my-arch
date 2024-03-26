return {
    --multi-select
    "mg979/vim-visual-multi",

    --tmux
    "christoomey/vim-tmux-navigator",
    {
        'Lilja/zellij.nvim',
        config = function()
            require('zellij').setup({
                replaceVimWindowNavigationKeybinds = false, -- Will set keybinds like <C-w>h to left
                vimTmuxNavigatorKeybinds = false,       -- Will set keybinds like <C-h> to left
                debug = false,
            })
        end
    }
}
