$env.STARSHIP_CONFIG = "C:/Users/lzh/github/configure/starship.toml"

$env.config.buffer_editor = "cursor"
$env.config.show_banner = false
$env.config.shell_integration.osc133 = false

$env.path ++= ["C:/Users/lzh/github/configure/rust-ip/target/release"]

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

rust-ip -s
