if status is-interactive
    # Commands to run in interactive sessions can go here
    if command -v atuin
        atuin init fish | source
    end
end

set -g fish_user_abbreviations

zoxide init fish | source
starship init fish | source

