source ~/.config/fish/env.fish
source ~/.config/fish/completion.fish

starship init fish | source


if status is-interactive
and not set -q TMUX
    exec tmux
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
