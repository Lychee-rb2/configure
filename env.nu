$env.config.buffer_editor = "cursor"
$env.config.show_banner = false
$env.config.shell_integration.osc133 = false
use std "path add"

if $nu.os-info.name == "macos" {
    path add "/Users/lychee/Documents/configure/rust-ip/target/release"
    path add "/opt/homebrew/bin"
    path add "/Users/lychee/.cargo/bin"
    path add "/Applications"
    $env.STARSHIP_CONFIG = "/Users/lychee/Documents/configure/starship.toml"
}
if $nu.os-info.name == "windows" {
    path add "C:/Users/lzh/github/configure/rust-ip/target/release"
    $env.STARSHIP_CONFIG = "C:/Users/lzh/github/configure/starship.toml"
}

source ./fnm.env.nu


