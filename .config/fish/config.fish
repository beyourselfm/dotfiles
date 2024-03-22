set fish_greeting ""


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
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0

# lsd
alias ls='lsd'
alias ll='ls -l --icon auto'
alias lla='ll -a'

# fzf shorcuts
fzf_configure_bindings --git_status=\cg --history=\ch --processes=\cp --directory=\co --history=\cr --variables=\e\cv
