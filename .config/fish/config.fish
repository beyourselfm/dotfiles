set fish_greeting "Hi~~~~~~~~~~"

starship init fish | source

# pnpm
set -gx PNPM_HOME /Users/liam/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH

# tmuxifier
set -gx PATH "$HOME/.tmux/plugins/tmuxifier/bin" $PATH

# eval (tmuxifier init - fish)

# proxy
set proxy_host 127.0.0.1:7890
set proxy_auth false

# nvim
alias n='nvim'

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --li :500"
set -g FZF_LEGACY_KEYBINDINGS 0


# fzf shorcuts
fzf_configure_bindings --history=\ch --directory=\co --history=\cr

fish_config theme choose "Rosé Pine"
