function fish_greeting
    neofetch
end

starship init fish | source

set -gx PNPM_HOME /Users/liam/Library/pnpm

set -gx PATH "$PNPM_HOME" $PATH

# editor
set -gx EDITOR nvim
# tmuxifier
set -gx PATH "$HOME/.tmux/plugins/tmuxifier/bin" $PATH
set -gx OPENAI_KEY sk-proj-kZPGFZNBdNhYLr0F4EloT3BlbkFJ0ug0bDuXXcwYRnxZiW1g
# eval (tmuxifier init - fish)
#

# proxy
set proxy_host 127.0.0.1:7890
set proxy_auth false

# nvim
alias n='nvim'

set fzf_fd_opts --color=never

# yazi
function yy
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end


# bat 
# set -gx BAT_THEME rose-pine-moon

# eza 
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

alias age='gh copilot explain'
alias ags="gh copilot suggest"

# tldr
alias t="tldr"
