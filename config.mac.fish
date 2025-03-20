# if status is-interactive
# # Commands to run in interactive sessions can go here
fish_add_path /opt/homebrew/bin
fish_add_path /Users/lychee/.cargo/bin
fish_add_path /Users/lychee/Documents/configure/rust-ip/target/release/
set -x WEZTERM_CONFIG_FILE /Users/lychee/.config/wezterm/wezterm.lua
starship init fish | source
fnm env --use-on-cd --shell fish | source
fnm completions --shell fish | source

alias code="open -a Visual\ Studio\ Code"
alias ws="open -a webstorm"
alias jc="cd /Users/lychee/Documents/JOG-GROUP/jog-monorepo/applications/jeanscentre"
alias gar="cd /Users/lychee/Documents/JOG-GROUP/jog-monorepo/applications/garcia"
alias rb2="zsh /Users/lychee/Documents/bun/bin/bun-help"

rust-ip -s
# end
